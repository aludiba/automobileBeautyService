#import "TOCropViewController.h"
#import "TOCropViewControllerTransitioning.h"
#import "TOActivityCroppedImageProvider.h"
#import "UIImage+CropRotate.h"
#import "TOCroppedImageAttributes.h"
static const CGFloat kTOCropViewControllerTitleTopPadding = 14.0f;
static const CGFloat kTOCropViewControllerToolbarHeight = 44.0f;
@interface TOCropViewController () <UIActionSheetDelegate, UIViewControllerTransitioningDelegate, TOCropViewDelegate>
@property (nonatomic, readwrite) UIImage *image;
@property (nonatomic, assign, readwrite) TOCropViewCroppingStyle croppingStyle;
@property (nonatomic, strong) TOCropToolbar *toolbar;
@property (nonatomic, strong, readwrite) TOCropView *cropView;
@property (nonatomic, strong) UIView *toolbarSnapshotView;
@property (nonatomic, strong, readwrite) UILabel *titleLabel;
@property (nonatomic, copy) void (^prepareForTransitionHandler)(void);
@property (nonatomic, strong) TOCropViewControllerTransitioning *transitionController;
@property (nonatomic, assign) BOOL inTransition;
@property (nonatomic, assign) BOOL navigationBarHidden;
@property (nonatomic, assign) BOOL toolbarHidden;
@property (nonatomic, readonly) BOOL verticalLayout;
@property (nonatomic, readonly) BOOL overrideStatusBar; 
@property (nonatomic, readonly) BOOL statusBarHidden;   
@property (nonatomic, readonly) CGFloat statusBarHeight; 
@property (nonatomic, readonly) UIEdgeInsets statusBarSafeInsets;
@property (nonatomic, assign) BOOL firstTime;
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
@property (nonatomic, strong) UIPopoverController *activityPopoverController;
#pragma clang diagnostic pop
@end
@implementation TOCropViewController
- (instancetype)initWithCroppingStyle:(TOCropViewCroppingStyle)style image:(UIImage *)image
{
    NSParameterAssert(image);
    self = [super init];
    if (self) {
        _image = image;
        _croppingStyle = style;
        self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        self.modalPresentationStyle = UIModalPresentationFullScreen;
        self.automaticallyAdjustsScrollViewInsets = NO;
        self.hidesNavigationBar = true;
        _transitionController = [[TOCropViewControllerTransitioning alloc] init];
        _aspectRatioPreset = TOCropViewControllerAspectRatioPresetOriginal;
        _toolbarPosition = TOCropViewControllerToolbarPositionBottom;
    }
    return self;
}
- (instancetype)initWithImage:(UIImage *)image
{
    return [self initWithCroppingStyle:TOCropViewCroppingStyleDefault image:image];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.transitioningDelegate = self;
    self.view.backgroundColor = self.cropView.backgroundColor;
    BOOL circularMode = (self.croppingStyle == TOCropViewCroppingStyleCircular);
    self.cropView.frame = [self frameForCropViewWithVerticalLayout:self.verticalLayout];
    self.toolbar.frame = [self frameForToolbarWithVerticalLayout:self.verticalLayout];
    self.toolbar.clampButtonHidden = self.aspectRatioPickerButtonHidden || circularMode;
    self.toolbar.rotateClockwiseButtonHidden = self.rotateClockwiseButtonHidden;
    __weak typeof(self) weakSelf = self;
    self.toolbar.doneButtonTapped   = ^{ [weakSelf doneButtonTapped]; };
    self.toolbar.cancelButtonTapped = ^{ [weakSelf cancelButtonTapped]; };
    self.toolbar.resetButtonTapped = ^{ [weakSelf resetCropViewLayout]; };
    self.toolbar.clampButtonTapped = ^{ [weakSelf showAspectRatioDialog]; };
    self.toolbar.rotateCounterclockwiseButtonTapped = ^{ [weakSelf rotateCropViewCounterclockwise]; };
    self.toolbar.rotateClockwiseButtonTapped        = ^{ [weakSelf rotateCropViewClockwise]; };
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if (animated) {
        self.inTransition = YES;
        [self setNeedsStatusBarAppearanceUpdate];
    }
    if (self.navigationController) {
        if (self.hidesNavigationBar) {
            self.navigationBarHidden = self.navigationController.navigationBarHidden;
            self.toolbarHidden = self.navigationController.toolbarHidden;
            [self.navigationController setNavigationBarHidden:YES animated:animated];
            [self.navigationController setToolbarHidden:YES animated:animated];
        }
        self.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    }
    else {
        [self.cropView setBackgroundImageViewHidden:YES animated:NO];
        self.titleLabel.alpha = animated ? 0.0f : 1.0f;
    }
    if (self.aspectRatioPreset != TOCropViewControllerAspectRatioPresetOriginal) {
        [self setAspectRatioPreset:self.aspectRatioPreset animated:NO];
    }
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.inTransition = NO;
    self.cropView.simpleRenderMode = NO;
    void (^updateContentBlock)(void) = ^{
        [self setNeedsStatusBarAppearanceUpdate];
        self.titleLabel.alpha = 1.0f;
    };
    if (animated) {
        [UIView animateWithDuration:0.3f animations:updateContentBlock];
    }
    else {
        updateContentBlock();
    }
    if (self.cropView.gridOverlayHidden) {
        [self.cropView setGridOverlayHidden:NO animated:animated];
    }
    if (self.navigationController == nil) {
        [self.cropView setBackgroundImageViewHidden:NO animated:animated];
    }
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    self.inTransition = YES;
    [UIView animateWithDuration:0.5f animations:^{ [self setNeedsStatusBarAppearanceUpdate]; }];
    if (self.navigationController && self.hidesNavigationBar) {
        [self.navigationController setNavigationBarHidden:self.navigationBarHidden animated:animated];
        [self.navigationController setToolbarHidden:self.toolbarHidden animated:animated];
    }
}
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    self.inTransition = NO;
    [self setNeedsStatusBarAppearanceUpdate];
}
#pragma mark - Status Bar -
- (UIStatusBarStyle)preferredStatusBarStyle
{
    if (self.navigationController) {
        return UIStatusBarStyleLightContent;
    }
    return UIStatusBarStyleDefault;
}
- (BOOL)prefersStatusBarHidden
{
    if (!self.overrideStatusBar) {
        return self.statusBarHidden;
    }
    BOOL hidden = YES; 
    hidden = hidden && !(self.inTransition); 
    hidden = hidden && !(self.view.superview == nil); 
    return hidden;
}
- (UIRectEdge)preferredScreenEdgesDeferringSystemGestures
{
    return UIRectEdgeAll;
}
- (CGRect)frameForToolbarWithVerticalLayout:(BOOL)verticalLayout
{
    UIEdgeInsets insets = self.statusBarSafeInsets;
    CGRect frame = CGRectZero;
    if (!verticalLayout) { 
        frame.origin.x = insets.left;
        frame.origin.y = 0.0f;
        frame.size.width = kTOCropViewControllerToolbarHeight;
        frame.size.height = CGRectGetHeight(self.view.frame);
    }
    else {
        frame.origin.x = 0.0f;
        frame.size.width = CGRectGetWidth(self.view.bounds);
        frame.size.height = kTOCropViewControllerToolbarHeight;
        if (self.toolbarPosition == TOCropViewControllerToolbarPositionBottom) {
            frame.origin.y = CGRectGetHeight(self.view.bounds) - (frame.size.height + insets.bottom);
        } else {
            frame.origin.y = insets.top;
        }
    }
    return frame;
}
- (CGRect)frameForCropViewWithVerticalLayout:(BOOL)verticalLayout
{
    UIView *view = nil;
    if (self.parentViewController == nil) {
        view = self.view;
    }
    else {
        view = self.parentViewController.view;
    }
    UIEdgeInsets insets = self.statusBarSafeInsets;
    CGRect bounds = view.bounds;
    CGRect frame = CGRectZero;
    if (!verticalLayout) {
        frame.origin.x = kTOCropViewControllerToolbarHeight + insets.left;
        frame.size.width = CGRectGetWidth(bounds) - frame.origin.x;
		frame.size.height = CGRectGetHeight(bounds);
    }
    else { 
        frame.size.height = CGRectGetHeight(bounds);
        frame.size.width = CGRectGetWidth(bounds);
        if (self.toolbarPosition == TOCropViewControllerToolbarPositionBottom) {
            frame.size.height -= (insets.bottom + kTOCropViewControllerToolbarHeight);
        } else if (self.toolbarPosition == TOCropViewControllerToolbarPositionTop) {
			frame.origin.y = kTOCropViewControllerToolbarHeight + insets.top;
            frame.size.height -= frame.origin.y;
        }
    }
    return frame;
}
- (CGRect)frameForTitleLabelWithSize:(CGSize)size verticalLayout:(BOOL)verticalLayout
{
    CGRect frame = (CGRect){CGPointZero, size};
    CGFloat viewWidth = self.view.bounds.size.width;
    CGFloat x = 0.0f; 
    if (!verticalLayout) {
        x = kTOCropViewControllerTitleTopPadding;
        if (@available(iOS 11.0, *)) {
            x += self.view.safeAreaInsets.left;
        }
        viewWidth -= x;
    }
    frame.origin.x = ceilf((viewWidth - frame.size.width) * 0.5f);
    if (!verticalLayout) { frame.origin.x += x; }
    if (@available(iOS 11.0, *)) {
        frame.origin.y = self.view.safeAreaInsets.top + kTOCropViewControllerTitleTopPadding;
    }
    else {
        frame.origin.y = self.statusBarHeight + kTOCropViewControllerTitleTopPadding;
    }
    return frame;
}
- (void)adjustCropViewInsets
{
    UIEdgeInsets insets = self.statusBarSafeInsets;
    if (!self.titleLabel.text.length) {
        if (self.verticalLayout) {
            self.cropView.cropRegionInsets = UIEdgeInsetsMake(insets.top, 0.0f, 0.0, 0.0f);
        }
        else {
            self.cropView.cropRegionInsets = UIEdgeInsetsMake(0.0f, 0.0f, insets.bottom, 0.0f);
        }
        return;
    }
    CGRect frame = self.titleLabel.frame;
    frame.size = [self.titleLabel sizeThatFits:self.cropView.frame.size];
    self.titleLabel.frame = frame;
    CGFloat verticalInset = self.statusBarHeight;
    verticalInset += kTOCropViewControllerTitleTopPadding;
    verticalInset += self.titleLabel.frame.size.height;
    self.cropView.cropRegionInsets = UIEdgeInsetsMake(verticalInset, 0, insets.bottom, 0);
}
- (void)adjustToolbarInsets
{
    UIEdgeInsets insets = UIEdgeInsetsZero;
    if (@available(iOS 11.0, *)) {
        if (!self.verticalLayout) {
            insets.left = self.view.safeAreaInsets.left;
        }
        else {
            if (self.toolbarPosition == TOCropViewControllerToolbarPositionTop) {
                insets.top = self.view.safeAreaInsets.top;
            }
            else { 
                insets.bottom = self.view.safeAreaInsets.bottom;
            }
        }
    }
    else { 
        if (!self.statusBarHidden && self.toolbarPosition == TOCropViewControllerToolbarPositionTop) {
            insets.top = self.statusBarHeight;
        }
    }
    self.toolbar.backgroundViewOutsets = insets;
    self.toolbar.statusBarHeightInset = self.statusBarHeight;
    [self.toolbar setNeedsLayout];
}
- (void)viewSafeAreaInsetsDidChange
{
    [super viewSafeAreaInsetsDidChange];
    [self adjustCropViewInsets];
    [self adjustToolbarInsets];
}
- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.cropView.frame = [self frameForCropViewWithVerticalLayout:self.verticalLayout];
    [self adjustCropViewInsets];
    [self.cropView moveCroppedContentToCenterAnimated:NO];
    if (self.firstTime == NO) {
        [self.cropView performInitialSetup];
        self.firstTime = YES;
    }
    if (self.title.length) {
        self.titleLabel.frame = [self frameForTitleLabelWithSize:self.titleLabel.frame.size verticalLayout:self.verticalLayout];
        [self.cropView moveCroppedContentToCenterAnimated:NO];
    }
    [UIView performWithoutAnimation:^{
        self.toolbar.frame = [self frameForToolbarWithVerticalLayout:self.verticalLayout];
        [self adjustToolbarInsets];
        [self.toolbar setNeedsLayout];
    }];
}
#pragma mark - Rotation Handling -
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdeprecated-implementations"
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    self.toolbarSnapshotView = [self.toolbar snapshotViewAfterScreenUpdates:NO];
    self.toolbarSnapshotView.frame = self.toolbar.frame;
    if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation)) {
        self.toolbarSnapshotView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    }
    else {
        self.toolbarSnapshotView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleRightMargin;
    }
    [self.view addSubview:self.toolbarSnapshotView];
    CGRect frame = [self frameForToolbarWithVerticalLayout:UIInterfaceOrientationIsPortrait(toInterfaceOrientation)];
    if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation)) {
        frame.origin.x = -frame.size.width;
    }
    else {
        frame.origin.y = self.view.bounds.size.height;
    }
    self.toolbar.frame = frame;
    [self.toolbar layoutIfNeeded];
    self.toolbar.alpha = 0.0f;
    [self.cropView prepareforRotation];
    self.cropView.frame = [self frameForCropViewWithVerticalLayout:!UIInterfaceOrientationIsPortrait(toInterfaceOrientation)];
    self.cropView.simpleRenderMode = YES;
    self.cropView.internalLayoutDisabled = YES;
}
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    self.toolbar.frame = [self frameForToolbarWithVerticalLayout:!UIInterfaceOrientationIsLandscape(toInterfaceOrientation)];
    [self.toolbar.layer removeAllAnimations];
    for (CALayer *sublayer in self.toolbar.layer.sublayers) {
        [sublayer removeAllAnimations];
    }
    [UIView animateWithDuration:duration
                          delay:0.0f
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:
    ^{
        self.cropView.frame = [self frameForCropViewWithVerticalLayout:!UIInterfaceOrientationIsLandscape(toInterfaceOrientation)];
        self.toolbar.frame = [self frameForToolbarWithVerticalLayout:UIInterfaceOrientationIsPortrait(toInterfaceOrientation)];
        [self.cropView performRelayoutForRotation];
    } completion:nil];
    self.toolbarSnapshotView.alpha = 0.0f;
    self.toolbar.alpha = 1.0f;
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [self.toolbarSnapshotView removeFromSuperview];
    self.toolbarSnapshotView = nil;
    [self.cropView setSimpleRenderMode:NO animated:YES];
    self.cropView.internalLayoutDisabled = NO;
}
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    if (CGSizeEqualToSize(size, self.view.bounds.size)) { return; }
    UIInterfaceOrientation orientation = UIInterfaceOrientationPortrait;
    CGSize currentSize = self.view.bounds.size;
    if (currentSize.width < size.width) {
        orientation = UIInterfaceOrientationLandscapeLeft;
    }
    [self willRotateToInterfaceOrientation:orientation duration:coordinator.transitionDuration];
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        [self willAnimateRotationToInterfaceOrientation:orientation duration:coordinator.transitionDuration];
    } completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        [self didRotateFromInterfaceOrientation:orientation];
    }];
}
#pragma clang diagnostic pop
#pragma mark - Reset -
- (void)resetCropViewLayout
{
    BOOL animated = (self.cropView.angle == 0);
    if (self.resetAspectRatioEnabled) {
        self.aspectRatioLockEnabled = NO;
    }
    [self.cropView resetLayoutToDefaultAnimated:animated];
}
#pragma mark - Aspect Ratio Handling -
- (void)showAspectRatioDialog
{
    if (self.cropView.aspectRatioLockEnabled) {
        self.cropView.aspectRatioLockEnabled = NO;
        self.toolbar.clampButtonGlowing = NO;
        return;
    }
    BOOL verticalCropBox = self.cropView.cropBoxAspectRatioIsPortrait;
	NSBundle *resourceBundle = TO_CROP_VIEW_RESOURCE_BUNDLE_FOR_OBJECT(self);
	NSString *cancelButtonTitle = NSLocalizedStringFromTableInBundle(@"Cancel", @"TOCropViewControllerLocalizable", resourceBundle, nil);
	NSString *originalButtonTitle = NSLocalizedStringFromTableInBundle(@"Original", @"TOCropViewControllerLocalizable", resourceBundle, nil);
	NSString *squareButtonTitle = NSLocalizedStringFromTableInBundle(@"Square", @"TOCropViewControllerLocalizable", resourceBundle, nil);
    NSMutableArray *items = [NSMutableArray array];
    [items addObject:originalButtonTitle];
    [items addObject:squareButtonTitle];
    if (verticalCropBox) {
        [items addObjectsFromArray:@[@"2:3", @"3:5", @"3:4", @"4:5", @"5:7", @"9:16"]];
    }
    else {
        [items addObjectsFromArray:@[@"3:2", @"5:3", @"4:3", @"5:4", @"7:5", @"16:9"]];
    }
    if (NSClassFromString(@"UIAlertController")) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
        [alertController addAction:[UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:nil]];
        NSInteger i = 0;
        for (NSString *item in items) {
            UIAlertAction *action = [UIAlertAction actionWithTitle:item style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [self setAspectRatioPreset:(TOCropViewControllerAspectRatioPreset)i animated:YES];
                self.aspectRatioLockEnabled = YES;
            }];
            [alertController addAction:action];
            i++;
        }
        alertController.modalPresentationStyle = UIModalPresentationPopover;
        UIPopoverPresentationController *presentationController = [alertController popoverPresentationController];
        presentationController.sourceView = self.toolbar;
        presentationController.sourceRect = self.toolbar.clampButtonFrame;
        [self presentViewController:alertController animated:YES completion:nil];
    }
    else {
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_8_0
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                                 delegate:self
                                                        cancelButtonTitle:cancelButtonTitle
                                                   destructiveButtonTitle:nil
                                                        otherButtonTitles:nil];
        for (NSString *item in items) {
            [actionSheet addButtonWithTitle:item];
        }
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
            [actionSheet showFromRect:self.toolbar.clampButtonFrame inView:self.toolbar animated:YES];
        else
            [actionSheet showInView:self.view];
#pragma clang diagnostic pop
#endif
    }
}
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_8_0
- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    [self setAspectRatioPreset:(TOCropViewControllerAspectRatioPreset)buttonIndex animated:YES];
    self.aspectRatioLockEnabled = YES;
}
#endif
- (void)setAspectRatioPreset:(TOCropViewControllerAspectRatioPreset)aspectRatioPreset animated:(BOOL)animated
{
    CGSize aspectRatio = CGSizeZero;
    _aspectRatioPreset = aspectRatioPreset;
    switch (aspectRatioPreset) {
        case TOCropViewControllerAspectRatioPresetOriginal:
            aspectRatio = CGSizeZero;
            break;
        case TOCropViewControllerAspectRatioPresetSquare:
            aspectRatio = CGSizeMake(1.0f, 1.0f);
            break;
        case TOCropViewControllerAspectRatioPreset3x2:
            aspectRatio = CGSizeMake(3.0f, 2.0f);
            break;
        case TOCropViewControllerAspectRatioPreset5x3:
            aspectRatio = CGSizeMake(5.0f, 3.0f);
            break;
        case TOCropViewControllerAspectRatioPreset4x3:
            aspectRatio = CGSizeMake(4.0f, 3.0f);
            break;
        case TOCropViewControllerAspectRatioPreset5x4:
            aspectRatio = CGSizeMake(5.0f, 4.0f);
            break;
        case TOCropViewControllerAspectRatioPreset7x5:
            aspectRatio = CGSizeMake(7.0f, 5.0f);
            break;
        case TOCropViewControllerAspectRatioPreset16x9:
            aspectRatio = CGSizeMake(16.0f, 9.0f);
            break;
        case TOCropViewControllerAspectRatioPresetCustom:
            aspectRatio = self.customAspectRatio;
            break;
    }
    BOOL aspectRatioCanSwapDimensions = !self.aspectRatioLockEnabled ||
                                (self.aspectRatioLockEnabled && self.aspectRatioLockDimensionSwapEnabled);
    if (self.cropView.cropBoxAspectRatioIsPortrait &&
        aspectRatioCanSwapDimensions)
    {
        CGFloat width = aspectRatio.width;
        aspectRatio.width = aspectRatio.height;
        aspectRatio.height = width;
    }
    [self.cropView setAspectRatio:aspectRatio animated:animated];
}
- (void)rotateCropViewClockwise
{
    [self.cropView rotateImageNinetyDegreesAnimated:YES clockwise:YES];
}
- (void)rotateCropViewCounterclockwise
{
    [self.cropView rotateImageNinetyDegreesAnimated:YES clockwise:NO];
}
#pragma mark - Crop View Delegates -
- (void)cropViewDidBecomeResettable:(TOCropView *)cropView
{
    self.toolbar.resetButtonEnabled = YES;
}
- (void)cropViewDidBecomeNonResettable:(TOCropView *)cropView
{
    self.toolbar.resetButtonEnabled = NO;
}
#pragma mark - Presentation Handling -
- (void)presentAnimatedFromParentViewController:(UIViewController *)viewController
                                       fromView:(UIView *)fromView
                                      fromFrame:(CGRect)fromFrame
                                          setup:(void (^)(void))setup
                                     completion:(void (^)(void))completion
{
    [self presentAnimatedFromParentViewController:viewController fromImage:nil fromView:fromView fromFrame:fromFrame
                                            angle:0 toImageFrame:CGRectZero setup:setup completion:nil];
}
- (void)presentAnimatedFromParentViewController:(UIViewController *)viewController
                                      fromImage:(UIImage *)image
                                       fromView:(UIView *)fromView
                                      fromFrame:(CGRect)fromFrame
                                          angle:(NSInteger)angle
                                   toImageFrame:(CGRect)toFrame
                                          setup:(void (^)(void))setup
                                     completion:(void (^)(void))completion
{
    self.transitionController.image     = image ? image : self.image;
    self.transitionController.fromFrame = fromFrame;
    self.transitionController.fromView  = fromView;
    self.prepareForTransitionHandler    = setup;
    if (self.angle != 0 || !CGRectIsEmpty(toFrame)) {
        self.angle = angle;
        self.imageCropFrame = toFrame;
    }
    __weak typeof (self) weakSelf = self;
    [viewController presentViewController:self.parentViewController ? self.parentViewController : self
                                 animated:YES
                               completion:^
    {
        typeof (self) strongSelf = weakSelf;
        if (completion) {
            completion();
        }
        [strongSelf.cropView setCroppingViewsHidden:NO animated:YES];
        if (!CGRectIsEmpty(fromFrame)) {
            [strongSelf.cropView setGridOverlayHidden:NO animated:YES];
        }
    }];
}
- (void)dismissAnimatedFromParentViewController:(UIViewController *)viewController
                                         toView:(UIView *)toView
                                        toFrame:(CGRect)frame
                                          setup:(void (^)(void))setup
                                     completion:(void (^)(void))completion
{
    [self dismissAnimatedFromParentViewController:viewController withCroppedImage:nil toView:toView toFrame:frame setup:setup completion:completion];
}
- (void)dismissAnimatedFromParentViewController:(UIViewController *)viewController
                               withCroppedImage:(UIImage *)image
                                         toView:(UIView *)toView
                                        toFrame:(CGRect)frame
                                          setup:(void (^)(void))setup
                                     completion:(void (^)(void))completion
{
    if (image) {
        self.transitionController.image     = image ? image : self.image;
        self.transitionController.fromFrame = [self.cropView convertRect:self.cropView.cropBoxFrame toView:self.view];
    }
    else { 
        self.transitionController.image     = self.image;
        self.transitionController.fromFrame = [self.cropView convertRect:self.cropView.imageViewFrame toView:self.view];
    }
    self.transitionController.toView    = toView;
    self.transitionController.toFrame   = frame;
    self.prepareForTransitionHandler    = setup;
    [viewController dismissViewControllerAnimated:YES completion:^ {
        if (completion) { completion(); }
    }];
}
- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    if (self.navigationController || self.modalTransitionStyle == UIModalTransitionStyleCoverVertical) {
        return nil;
    }
    self.cropView.simpleRenderMode = YES;
    __weak typeof (self) weakSelf = self;
    self.transitionController.prepareForTransitionHandler = ^{
        typeof (self) strongSelf = weakSelf;
        TOCropViewControllerTransitioning *transitioning = strongSelf.transitionController;
        transitioning.toFrame = [strongSelf.cropView convertRect:strongSelf.cropView.cropBoxFrame toView:strongSelf.view];
        if (!CGRectIsEmpty(transitioning.fromFrame) || transitioning.fromView) {
            strongSelf.cropView.croppingViewsHidden = YES;
        }
        if (strongSelf.prepareForTransitionHandler) {
            strongSelf.prepareForTransitionHandler();
        }
        strongSelf.prepareForTransitionHandler = nil;
    };
    self.transitionController.isDismissing = NO;
    return self.transitionController;
}
- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    if (self.navigationController || self.modalTransitionStyle == UIModalTransitionStyleCoverVertical) {
        return nil;
    }
    __weak typeof (self) weakSelf = self;
    self.transitionController.prepareForTransitionHandler = ^{
        typeof (self) strongSelf = weakSelf;
        TOCropViewControllerTransitioning *transitioning = strongSelf.transitionController;
        if (!CGRectIsEmpty(transitioning.toFrame) || transitioning.toView) {
            strongSelf.cropView.croppingViewsHidden = YES;
        }
        else {
            strongSelf.cropView.simpleRenderMode = YES;
        }
        if (strongSelf.prepareForTransitionHandler) {
            strongSelf.prepareForTransitionHandler();
        }
    };
    self.transitionController.isDismissing = YES;
    return self.transitionController;
}
#pragma mark - Button Feedback -
- (void)cancelButtonTapped
{
    bool isDelegateOrCallbackHandled = NO;
    if ([self.delegate respondsToSelector:@selector(cropViewController:didFinishCancelled:)]) {
        [self.delegate cropViewController:self didFinishCancelled:YES];
        isDelegateOrCallbackHandled = YES;
    }
    if (self.onDidFinishCancelled != nil) {
        self.onDidFinishCancelled(YES);
        isDelegateOrCallbackHandled = YES;
    }
    if (!isDelegateOrCallbackHandled) {
        if (self.navigationController) {
            [self.navigationController popViewControllerAnimated:YES];
        }
        else {
            self.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
            [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
        }
    }
}
- (void)doneButtonTapped
{
    CGRect cropFrame = self.cropView.imageCropFrame;
    NSInteger angle = self.cropView.angle;
    if (self.showActivitySheetOnDone) {
        TOActivityCroppedImageProvider *imageItem = [[TOActivityCroppedImageProvider alloc] initWithImage:self.image cropFrame:cropFrame angle:angle circular:(self.croppingStyle == TOCropViewCroppingStyleCircular)];
        TOCroppedImageAttributes *attributes = [[TOCroppedImageAttributes alloc] initWithCroppedFrame:cropFrame angle:angle originalImageSize:self.image.size];
        NSMutableArray *activityItems = [@[imageItem, attributes] mutableCopy];
        if (self.activityItems) {
            [activityItems addObjectsFromArray:self.activityItems];
        }
        UIActivityViewController *activityController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:self.applicationActivities];
        activityController.excludedActivityTypes = self.excludedActivityTypes;
        if (NSClassFromString(@"UIPopoverPresentationController")) {
            activityController.modalPresentationStyle = UIModalPresentationPopover;
            activityController.popoverPresentationController.sourceView = self.toolbar;
            activityController.popoverPresentationController.sourceRect = self.toolbar.doneButtonFrame;
            [self presentViewController:activityController animated:YES completion:nil];
        }
        else {
            if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                [self presentViewController:activityController animated:YES completion:nil];
            }
            else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
                [self.activityPopoverController dismissPopoverAnimated:NO];
                self.activityPopoverController = [[UIPopoverController alloc] initWithContentViewController:activityController];
                [self.activityPopoverController presentPopoverFromRect:self.toolbar.doneButtonFrame inView:self.toolbar permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
#pragma clang diagnostic pop
            }
        }
        __weak typeof(activityController) blockController = activityController;
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
        activityController.completionWithItemsHandler = ^(NSString *activityType, BOOL completed, NSArray *returnedItems, NSError *activityError) {
            if (!completed) {
                return;
            }
            bool isCallbackOrDelegateHandled = NO;
            if (self.onDidFinishCancelled != nil) {
                self.onDidFinishCancelled(NO);
                isCallbackOrDelegateHandled = YES;
            }
            if ([self.delegate respondsToSelector:@selector(cropViewController:didFinishCancelled:)]) {
                [self.delegate cropViewController:self didFinishCancelled:NO];
                isCallbackOrDelegateHandled = YES;
            }
            if (!isCallbackOrDelegateHandled) {
                [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
                blockController.completionWithItemsHandler = nil;
            }
        };
#else
        activityController.completionHandler = ^(NSString *activityType, BOOL completed) {
            if (!completed) {
                return;
            }
            BOOL isCallbackOrDelegateHandled = NO;
            if (self.onDidFinishCancelled != nil) {
                self.onDidFinishCancelled(NO);
                isCallbackOrDelegateHandled = YES;
            }
            if ([self.delegate respondsToSelector:@selector(cropViewController:didFinishCancelled:)]) {
                [self.delegate cropViewController:self didFinishCancelled:NO];
                isCallbackOrDelegateHandled = YES;
            }
            if (!isCallbackOrDelegateHandled) {
                [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
                blockController.completionHandler = nil;
            }
        };
#endif
        return;
    }
    BOOL isCallbackOrDelegateHandled = NO;
    if ([self.delegate respondsToSelector:@selector(cropViewController:didCropImageToRect:angle:)]) {
        [self.delegate cropViewController:self didCropImageToRect:cropFrame angle:angle];
        isCallbackOrDelegateHandled = YES;
    }
    if (self.onDidCropImageToRect != nil) {
        self.onDidCropImageToRect(cropFrame, angle);
        isCallbackOrDelegateHandled = YES;
    }
    BOOL isCircularImageDelegateAvailable = [self.delegate respondsToSelector:@selector(cropViewController:didCropToCircularImage:withRect:angle:)];
    BOOL isCircularImageCallbackAvailable = self.onDidCropToCircleImage != nil;
    BOOL isDidCropToImageDelegateAvailable = [self.delegate respondsToSelector:@selector(cropViewController:didCropToImage:withRect:angle:)];
    BOOL isDidCropToImageCallbackAvailable = self.onDidCropToRect != nil;
    if (self.croppingStyle == TOCropViewCroppingStyleCircular && (isCircularImageDelegateAvailable || isCircularImageCallbackAvailable)) {
        UIImage *image = [self.image croppedImageWithFrame:cropFrame angle:angle circularClip:YES];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.03f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (isCircularImageDelegateAvailable) {
                [self.delegate cropViewController:self didCropToCircularImage:image withRect:cropFrame angle:angle];
            }
            if (isCircularImageCallbackAvailable) {
                self.onDidCropToCircleImage(image, cropFrame, angle);
            }
        });
        isCallbackOrDelegateHandled = YES;
    }
    else if (isDidCropToImageDelegateAvailable || isDidCropToImageCallbackAvailable) {
        UIImage *image = nil;
        if (angle == 0 && CGRectEqualToRect(cropFrame, (CGRect){CGPointZero, self.image.size})) {
            image = self.image;
        }
        else {
            image = [self.image croppedImageWithFrame:cropFrame angle:angle circularClip:NO];
        }
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.03f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (isDidCropToImageDelegateAvailable) {
                [self.delegate cropViewController:self didCropToImage:image withRect:cropFrame angle:angle];
            }
            if (isDidCropToImageCallbackAvailable) {
                self.onDidCropToRect(image, cropFrame, angle);
            }
        });
        isCallbackOrDelegateHandled = YES;
    }
    if (!isCallbackOrDelegateHandled) {
        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    }
}
#pragma mark - Property Methods -
- (void)setTitle:(NSString *)title
{
    [super setTitle:title];
    if (self.title.length == 0) {
        [_titleLabel removeFromSuperview];
        _cropView.cropRegionInsets = UIEdgeInsetsMake(0, 0, 0, 0);
        _titleLabel = nil;
        return;
    }
    self.titleLabel.text = self.title;
    [self.titleLabel sizeToFit];
    self.titleLabel.frame = [self frameForTitleLabelWithSize:self.titleLabel.frame.size verticalLayout:self.verticalLayout];
}
- (void)setDoneButtonTitle:(NSString *)title {
    self.toolbar.doneTextButtonTitle = title;
}
- (void)setCancelButtonTitle:(NSString *)title {
    self.toolbar.cancelTextButtonTitle = title;
}
- (TOCropView *)cropView {
    if (!_cropView) {
        _cropView = [[TOCropView alloc] initWithCroppingStyle:self.croppingStyle image:self.image];
        _cropView.delegate = self;
        _cropView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self.view addSubview:_cropView];
    }
    return _cropView;
}
- (TOCropToolbar *)toolbar {
    if (!_toolbar) {
        _toolbar = [[TOCropToolbar alloc] initWithFrame:CGRectZero];
        [self.view addSubview:_toolbar];
    }
    return _toolbar;
}
- (UILabel *)titleLabel
{
    if (!self.title.length) { return nil; }
    if (_titleLabel) { return _titleLabel; }
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _titleLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    _titleLabel.backgroundColor = [UIColor clearColor];
    _titleLabel.textColor = [UIColor whiteColor];
    _titleLabel.numberOfLines = 1;
    _titleLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines;
    _titleLabel.clipsToBounds = YES;
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.text = self.title;
    [self.view insertSubview:self.titleLabel aboveSubview:self.cropView];
    return _titleLabel;
}
- (void)setAspectRatioLockEnabled:(BOOL)aspectRatioLockEnabled
{
    self.toolbar.clampButtonGlowing = aspectRatioLockEnabled;
    self.cropView.aspectRatioLockEnabled = aspectRatioLockEnabled;
    if (!self.aspectRatioPickerButtonHidden) {
        self.aspectRatioPickerButtonHidden = (aspectRatioLockEnabled && self.resetAspectRatioEnabled == NO);
    }
}
- (void)setAspectRatioLockDimensionSwapEnabled:(BOOL)aspectRatioLockDimensionSwapEnabled
{
    self.cropView.aspectRatioLockDimensionSwapEnabled = aspectRatioLockDimensionSwapEnabled;
}
- (BOOL)aspectRatioLockEnabled
{
    return self.cropView.aspectRatioLockEnabled;
}
- (void)setRotateButtonsHidden:(BOOL)rotateButtonsHidden
{
    self.toolbar.rotateCounterclockwiseButtonHidden = rotateButtonsHidden;
    self.toolbar.rotateClockwiseButtonHidden = rotateButtonsHidden;
}
- (BOOL)rotateButtonsHidden
{
    return self.toolbar.rotateCounterclockwiseButtonHidden && self.toolbar.rotateClockwiseButtonHidden;
}
- (void)setRotateClockwiseButtonHidden:(BOOL)rotateClockwiseButtonHidden
{
    self.toolbar.rotateClockwiseButtonHidden = rotateClockwiseButtonHidden;
}
- (BOOL)rotateClockwiseButtonHidden {
    return self.toolbar.rotateClockwiseButtonHidden;
}
- (void)setAspectRatioPickerButtonHidden:(BOOL)aspectRatioPickerButtonHidden
{
    self.toolbar.clampButtonHidden = aspectRatioPickerButtonHidden;
}
- (BOOL)aspectRatioPickerButtonHidden
{
    return self.toolbar.clampButtonHidden;
}
- (void)setResetAspectRatioEnabled:(BOOL)resetAspectRatioEnabled
{
    self.cropView.resetAspectRatioEnabled = resetAspectRatioEnabled;
    if (!self.aspectRatioPickerButtonHidden) {
        self.aspectRatioPickerButtonHidden = (resetAspectRatioEnabled == NO && self.aspectRatioLockEnabled);
    }
}
- (void)setCustomAspectRatio:(CGSize)customAspectRatio
{
    _customAspectRatio = customAspectRatio;
    [self setAspectRatioPreset:TOCropViewControllerAspectRatioPresetCustom animated:NO];
}
- (BOOL)resetAspectRatioEnabled
{
    return self.cropView.resetAspectRatioEnabled;
}
- (void)setAngle:(NSInteger)angle
{
    self.cropView.angle = angle;
}
- (NSInteger)angle
{
    return self.cropView.angle;
}
- (void)setImageCropFrame:(CGRect)imageCropFrame
{
    self.cropView.imageCropFrame = imageCropFrame;
}
- (CGRect)imageCropFrame
{
    return self.cropView.imageCropFrame;
}
- (BOOL)verticalLayout
{
    return CGRectGetWidth(self.view.bounds) < CGRectGetHeight(self.view.bounds);
}
- (BOOL)overrideStatusBar
{
    if (self.navigationController) {
        return NO;
    }
    if (self.presentingViewController.prefersStatusBarHidden) {
        return NO;
    }
    return YES;
}
- (BOOL)statusBarHidden
{
    if (self.navigationController) {
        return self.navigationController.prefersStatusBarHidden;
    }
    if (self.presentingViewController.prefersStatusBarHidden) {
        return YES;
    }
    return YES;
}
- (CGFloat)statusBarHeight
{
    if (self.statusBarHidden) {
        return 0.0f;
    }
    CGFloat statusBarHeight = 0.0f;
    if (@available(iOS 11.0, *)) {
        statusBarHeight = self.view.safeAreaInsets.top;
    }
    else {
        statusBarHeight = self.topLayoutGuide.length;
    }
    return statusBarHeight;
}
- (UIEdgeInsets)statusBarSafeInsets
{
    UIEdgeInsets insets = UIEdgeInsetsZero;
    if (@available(iOS 11.0, *)) {
        insets = self.view.safeAreaInsets;
        if (insets.top <= 20.0f + FLT_EPSILON) {
            insets.top = self.statusBarHeight;
        }
    }
    else {
        insets.top = self.statusBarHeight;
    }
    return insets;
}
- (void)setMinimumAspectRatio:(CGFloat)minimumAspectRatio
{
    self.cropView.minimumAspectRatio = minimumAspectRatio;
}
- (CGFloat)minimumAspectRatio
{
    return self.cropView.minimumAspectRatio;
}
@end
