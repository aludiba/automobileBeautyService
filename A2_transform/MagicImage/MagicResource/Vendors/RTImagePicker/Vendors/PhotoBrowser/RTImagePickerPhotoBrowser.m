#import "RTImagePickerPhotoBrowser.h"
#import <QuartzCore/QuartzCore.h>
#import "RTImagePickerUtils.h"
#import "RTImagePickerPhotoBrowserPrivate.h"
#import "SDImageCache.h"
#import "UIImage+RTImagePickerPhotoBrowser.h"
#import "RTImagePickerNavigationController.h"
#define PADDING                  10
@interface RTImagePickerPhotoBrowser()
@end
static void * MWVideoPlayerObservation = &MWVideoPlayerObservation;
@implementation RTImagePickerPhotoBrowser
#pragma mark - Init
- (id)init {
    if ((self = [super init])) {
        [self _initialisation];
    }
    return self;
}
- (id)initWithDelegate:(id <RTImagePickerPhotoBrowserDelegate>)delegate {
    if ((self = [self init])) {
        _delegate = delegate;
    }
    return self;
}
- (id)initWithPhotos:(NSArray *)photosArray {
    if ((self = [self init])) {
        _fixedPhotosArray = photosArray;
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)decoder {
    if ((self = [super initWithCoder:decoder])) {
        [self _initialisation];
    }
    return self;
}
- (void)_initialisation {
    NSNumber *isVCBasedStatusBarAppearanceNum = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"UIViewControllerBasedStatusBarAppearance"];
    if (isVCBasedStatusBarAppearanceNum) {
        _isVCBasedStatusBarAppearance = isVCBasedStatusBarAppearanceNum.boolValue;
    } else {
        _isVCBasedStatusBarAppearance = YES; 
    }
    self.hidesBottomBarWhenPushed = YES;
    _hasBelongedToViewController = NO;
    _photoCount = NSNotFound;
    _previousLayoutBounds = CGRectZero;
    _currentPageIndex = 0;
    _previousPageIndex = NSUIntegerMax;
    _displayActionButton = YES;
    _displayNavArrows = NO;
    _zoomPhotosToFill = YES;
    _performingLayout = NO; 
    _rotating = NO;
    _viewIsActive = NO;
    _delayToHideElements = 5;
    _visiblePages = [[NSMutableSet alloc] init];
    _recycledPages = [[NSMutableSet alloc] init];
    _photos = [[NSMutableArray alloc] init];
    _thumbPhotos = [[NSMutableArray alloc] init];
    _currentGridContentOffset = CGPointMake(0, CGFLOAT_MAX);
    _didSavePreviousStateOfNavBar = NO;
    self.automaticallyAdjustsScrollViewInsets = NO;
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleMWPhotoLoadingDidEndNotification:)
                                                 name:RTImagePickerPhoto_LOADING_DID_END_NOTIFICATION
                                               object:nil];
}
- (void)dealloc {
    [self clearCurrentVideo];
    _pagingScrollView.delegate = nil;
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self releaseAllUnderlyingPhotos:NO];
    [[SDImageCache sharedImageCache] clearMemory]; 
}
- (void)releaseAllUnderlyingPhotos:(BOOL)preserveCurrent {
    NSArray *copy = [_photos copy];
    for (id p in copy) {
        if (p != [NSNull null]) {
            if (preserveCurrent && p == [self photoAtIndex:self.currentIndex]) {
                continue; 
            }
            [p unloadUnderlyingImage];
        }
    }
    copy = [_thumbPhotos copy];
    for (id p in copy) {
        if (p != [NSNull null]) {
            [p unloadUnderlyingImage];
        }
    }
}
- (void)didReceiveMemoryWarning {
    [self releaseAllUnderlyingPhotos:YES];
    [_recycledPages removeAllObjects];
    [super didReceiveMemoryWarning];
}
#pragma mark - View Loading
- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor blackColor];
    self.view.clipsToBounds = YES;
    CGRect pagingScrollViewFrame = [self frameForPagingScrollView];
    _pagingScrollView = [[UIScrollView alloc] initWithFrame:pagingScrollViewFrame];
    _pagingScrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _pagingScrollView.pagingEnabled = YES;
    _pagingScrollView.delegate = self;
    _pagingScrollView.showsHorizontalScrollIndicator = NO;
    _pagingScrollView.showsVerticalScrollIndicator = NO;
    _pagingScrollView.backgroundColor = [UIColor blackColor];
    _pagingScrollView.contentSize = [self contentSizeForPagingScrollView];
    [self.view addSubview:_pagingScrollView];
    _toolbar = [[UIToolbar alloc] initWithFrame:[self frameForToolbarAtOrientation:self.interfaceOrientation]];
    _toolbar.tintColor = [UIColor whiteColor];
    _toolbar.barTintColor = nil;
    [_toolbar setBackgroundImage:nil forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    _toolbar.barStyle = UIBarStyleBlackTranslucent;
    _toolbar.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleWidth;
    if (self.displayNavArrows) {
        NSString *arrowPathFormat = @"MWPhotoBrowser.bundle/UIBarButtonItemArrow%@";
        UIImage *previousButtonImage = [UIImage imageForResourcePath:[NSString stringWithFormat:arrowPathFormat, @"Left"] ofType:@"png" inBundle:[NSBundle bundleForClass:[self class]]];
        UIImage *nextButtonImage = [UIImage imageForResourcePath:[NSString stringWithFormat:arrowPathFormat, @"Right"] ofType:@"png" inBundle:[NSBundle bundleForClass:[self class]]];
        _previousButton = [[UIBarButtonItem alloc] initWithImage:previousButtonImage style:UIBarButtonItemStylePlain target:self action:@selector(gotoPreviousPage)];
        _nextButton = [[UIBarButtonItem alloc] initWithImage:nextButtonImage style:UIBarButtonItemStylePlain target:self action:@selector(gotoNextPage)];
    }
    [self reloadData];
    [super viewDidLoad];
}
- (void)performLayout {
    _performingLayout = YES;
    NSUInteger numberOfPhotos = [self numberOfPhotos];
    [_visiblePages removeAllObjects];
    [_recycledPages removeAllObjects];
    BOOL hasItems = NO;
    UIBarButtonItem *fixedSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    fixedSpace.width = 32; 
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    [items addObject:fixedSpace];
    if (_previousButton && _nextButton && numberOfPhotos > 1) {
        hasItems = YES;
        [items addObject:flexSpace];
        [items addObject:_previousButton];
        [items addObject:flexSpace];
        [items addObject:_nextButton];
        [items addObject:flexSpace];
    } else {
        [items addObject:flexSpace];
    }
    [_toolbar setItems:items];
    BOOL hideToolbar = YES;
    for (UIBarButtonItem* item in _toolbar.items) {
        if (item != fixedSpace && item != flexSpace) {
            hideToolbar = NO;
            break;
        }
    }
    if (hideToolbar) {
        [_toolbar removeFromSuperview];
    } else {
        [self.view addSubview:_toolbar];
    }
    [self updateNavigation];
    _pagingScrollView.contentOffset = [self contentOffsetForPageAtIndex:_currentPageIndex];
    [self tilePages];
    _performingLayout = NO;
}
- (void)viewDidUnload {
    _currentPageIndex = 0;
    _pagingScrollView = nil;
    _visiblePages = nil;
    _recycledPages = nil;
    _toolbar = nil;
    _previousButton = nil;
    _nextButton = nil;
    [super viewDidUnload];
}
- (BOOL)presentingViewControllerPrefersStatusBarHidden {
    UIViewController *presenting = self.presentingViewController;
    if (presenting) {
        if ([presenting isKindOfClass:[UINavigationController class]]) {
            presenting = [(UINavigationController *)presenting topViewController];
        }
    } else {
        if (self.navigationController && self.navigationController.viewControllers.count > 1) {
            presenting = [self.navigationController.viewControllers objectAtIndex:self.navigationController.viewControllers.count-2];
        }
    }
    if (presenting) {
        return [presenting prefersStatusBarHidden];
    } else {
        return NO;
    }
}
#pragma mark - Appearance
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if([(RTImagePickerNavigationController *)self.navigationController toolBarView]) {
        [[(RTImagePickerNavigationController *)self.navigationController toolBarView] SwitchToMode:RTImagePickerToolbarModePhotoBrowser];
    }
    if (!_viewHasAppearedInitially) {
        _leaveStatusBarAlone = [self presentingViewControllerPrefersStatusBarHidden];
        if (CGRectEqualToRect([[UIApplication sharedApplication] statusBarFrame], CGRectZero)) {
            _leaveStatusBarAlone = YES;
        }
    }
    if (!_leaveStatusBarAlone && UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        _previousStatusBarStyle = [[UIApplication sharedApplication] statusBarStyle];
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:animated];
    }
    if (!_viewIsActive && [self.navigationController.viewControllers objectAtIndex:0] != self) {
        [self storePreviousNavBarAppearance];
    }
    [self setNavBarAppearance:animated];
    [self hideControlsAfterDelay];
    if (_currentPageIndex != _pageIndexBeforeRotation) {
        [self jumpToPageAtIndex:_pageIndexBeforeRotation animated:NO];
    }
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    _viewIsActive = YES;
    if (!_viewHasAppearedInitially) {
        if (_autoPlayOnAppear) {
            RTImagePickerPhoto *photo = [self photoAtIndex:_currentPageIndex];
            if ([photo respondsToSelector:@selector(isVideo)] && photo.isVideo) {
                [self playVideoAtIndex:_currentPageIndex];
            }
        }
    }
    _viewHasAppearedInitially = YES;
}
- (void)viewWillDisappear:(BOOL)animated {
    _pageIndexBeforeRotation = _currentPageIndex;
    if ([self.navigationController.viewControllers objectAtIndex:0] != self &&
        ![self.navigationController.viewControllers containsObject:self]) {
        _viewIsActive = NO;
        [self restorePreviousNavBarAppearance:animated];
    }
    [self.navigationController.navigationBar.layer removeAllAnimations]; 
    [NSObject cancelPreviousPerformRequestsWithTarget:self]; 
    [self setControlsHidden:NO animated:NO permanent:YES];
    if (!_leaveStatusBarAlone && UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        [[UIApplication sharedApplication] setStatusBarStyle:_previousStatusBarStyle animated:animated];
    }
    [super viewWillDisappear:animated];
}
- (void)willMoveToParentViewController:(UIViewController *)parent {
    if (parent && _hasBelongedToViewController) {
        [NSException raise:@"MWPhotoBrowser Instance Reuse" format:@"MWPhotoBrowser instances cannot be reused."];
    }
}
- (void)didMoveToParentViewController:(UIViewController *)parent {
    if (!parent) _hasBelongedToViewController = YES;
}
#pragma mark - Nav Bar Appearance
- (void)setNavBarAppearance:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    UINavigationBar *navBar = self.navigationController.navigationBar;
    navBar.tintColor = [UIColor whiteColor];
    navBar.barTintColor = [UIColor blackColor];
    navBar.shadowImage = nil;
    navBar.translucent = NO;
    [navBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
}
- (void)storePreviousNavBarAppearance {
    _didSavePreviousStateOfNavBar = YES;
    _previousNavBarBarTintColor = self.navigationController.navigationBar.barTintColor;
    _previousNavBarTranslucent = self.navigationController.navigationBar.translucent;
    _previousNavBarTintColor = self.navigationController.navigationBar.tintColor;
    _previousNavBarHidden = self.navigationController.navigationBarHidden;
    _previousNavBarStyle = self.navigationController.navigationBar.barStyle;
    _previousNavigationBarBackgroundImageDefault = [self.navigationController.navigationBar backgroundImageForBarMetrics:UIBarMetricsDefault];
    _previousNavigationBarBackgroundImageLandscapePhone = [self.navigationController.navigationBar backgroundImageForBarMetrics:UIBarMetricsLandscapePhone];
}
- (void)restorePreviousNavBarAppearance:(BOOL)animated {
    if (_didSavePreviousStateOfNavBar) {
        [self.navigationController setNavigationBarHidden:_previousNavBarHidden animated:animated];
        UINavigationBar *navBar = self.navigationController.navigationBar;
        navBar.tintColor = _previousNavBarTintColor;
        navBar.translucent = _previousNavBarTranslucent;
        navBar.barTintColor = _previousNavBarBarTintColor;
        navBar.barStyle = _previousNavBarStyle;
        [navBar setBackgroundImage:_previousNavigationBarBackgroundImageDefault forBarMetrics:UIBarMetricsDefault];
        [navBar setBackgroundImage:_previousNavigationBarBackgroundImageLandscapePhone forBarMetrics:UIBarMetricsLandscapePhone];
        if (_previousViewControllerBackButton) {
            UIViewController *previousViewController = [self.navigationController topViewController]; 
            previousViewController.navigationItem.backBarButtonItem = _previousViewControllerBackButton;
            _previousViewControllerBackButton = nil;
        }
    }
}
#pragma mark - Layout
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self layoutVisiblePages];
}
- (void)layoutVisiblePages {
    _performingLayout = YES;
    _toolbar.frame = [self frameForToolbarAtOrientation:self.interfaceOrientation];
    NSUInteger indexPriorToLayout = _currentPageIndex;
    CGRect pagingScrollViewFrame = [self frameForPagingScrollView];
    if (!_skipNextPagingScrollViewPositioning) {
        _pagingScrollView.frame = pagingScrollViewFrame;
    }
    _skipNextPagingScrollViewPositioning = NO;
    _pagingScrollView.contentSize = [self contentSizeForPagingScrollView];
    for (RTImagePickerZoomingScrollView *page in _visiblePages) {
        NSUInteger index = page.index;
        page.frame = [self frameForPageAtIndex:index];
        if (page.selectedButton) {
            page.selectedButton.frame = [self frameForSelectedButton:page.selectedButton atIndex:index];
        }
        if (page.playButton) {
            page.playButton.frame = [self frameForPlayButton:page.playButton atIndex:index];
        }
        if (!CGRectEqualToRect(_previousLayoutBounds, self.view.bounds)) {
            [page setMaxMinZoomScalesForCurrentBounds];
            _previousLayoutBounds = self.view.bounds;
        }
    }
    [self positionVideoLoadingIndicator];
    _pagingScrollView.contentOffset = [self contentOffsetForPageAtIndex:indexPriorToLayout];
    [self didStartViewingPageAtIndex:_currentPageIndex]; 
    _currentPageIndex = indexPriorToLayout;
    _performingLayout = NO;
}
#pragma mark - Rotation
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    _pageIndexBeforeRotation = _currentPageIndex;
    _rotating = YES;
    if ([self areControlsHidden]) {
        self.navigationController.navigationBarHidden = YES;
    }
}
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    _currentPageIndex = _pageIndexBeforeRotation;
    [self hideControlsAfterDelay];
    [self layoutVisiblePages];
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    _rotating = NO;
    if ([self areControlsHidden]) {
        self.navigationController.navigationBarHidden = NO;
        self.navigationController.navigationBar.alpha = 0;
    }
}
#pragma mark - Data
- (NSUInteger)currentIndex {
    return _currentPageIndex;
}
- (void)reloadData {
    _photoCount = NSNotFound;
    NSUInteger numberOfPhotos = [self numberOfPhotos];
    if(numberOfPhotos == 0) {
        [self.navigationController popViewControllerAnimated:YES];
    }
    [self releaseAllUnderlyingPhotos:YES];
    [_photos removeAllObjects];
    [_thumbPhotos removeAllObjects];
    for (int i = 0; i < numberOfPhotos; i++) {
        [_photos addObject:[NSNull null]];
        [_thumbPhotos addObject:[NSNull null]];
    }
    if (numberOfPhotos > 0) {
        _currentPageIndex = MAX(0, MIN(_currentPageIndex, numberOfPhotos - 1));
    } else {
        _currentPageIndex = 0;
    }
    if ([self isViewLoaded]) {
        while (_pagingScrollView.subviews.count) {
            [[_pagingScrollView.subviews lastObject] removeFromSuperview];
        }
        [self performLayout];
        [self.view setNeedsLayout];
    }
}
- (NSUInteger)numberOfPhotos {
    if (_photoCount == NSNotFound) {
        if ([_delegate respondsToSelector:@selector(numberOfPhotosInPhotoBrowser:)]) {
            _photoCount = [_delegate numberOfPhotosInPhotoBrowser:self];
        } else if (_fixedPhotosArray) {
            _photoCount = _fixedPhotosArray.count;
        }
    }
    if (_photoCount == NSNotFound) _photoCount = 0;
    return _photoCount;
}
- (id<RTImagePickerPhoto>)photoAtIndex:(NSUInteger)index {
    id <RTImagePickerPhoto> photo = nil;
    if (index < _photos.count) {
        if ([_photos objectAtIndex:index] == [NSNull null]) {
            if ([_delegate respondsToSelector:@selector(photoBrowser:photoAtIndex:)]) {
                photo = [_delegate photoBrowser:self photoAtIndex:index];
            } else if (_fixedPhotosArray && index < _fixedPhotosArray.count) {
                photo = [_fixedPhotosArray objectAtIndex:index];
            }
            if (photo) [_photos replaceObjectAtIndex:index withObject:photo];
        } else {
            photo = [_photos objectAtIndex:index];
        }
    }
    return photo;
}
- (id<RTImagePickerPhoto>)thumbPhotoAtIndex:(NSUInteger)index {
    id <RTImagePickerPhoto> photo = nil;
    if (index < _thumbPhotos.count) {
        if ([_thumbPhotos objectAtIndex:index] == [NSNull null]) {
            if ([_delegate respondsToSelector:@selector(photoBrowser:thumbPhotoAtIndex:)]) {
                photo = [_delegate photoBrowser:self thumbPhotoAtIndex:index];
            }
            if (photo) [_thumbPhotos replaceObjectAtIndex:index withObject:photo];
        } else {
            photo = [_thumbPhotos objectAtIndex:index];
        }
    }
    return photo;
}
- (BOOL)photoIsSelectedAtIndex:(NSUInteger)index {
    BOOL value = NO;
    if (_displaySelectionButtons) {
        if ([self.delegate respondsToSelector:@selector(photoBrowser:isPhotoSelectedAtIndex:)]) {
            value = [self.delegate photoBrowser:self isPhotoSelectedAtIndex:index];
        }
    }
    return value;
}
- (void)setPhotoSelected:(BOOL)selected atIndex:(NSUInteger)index {
    if (_displaySelectionButtons) {
        if ([self.delegate respondsToSelector:@selector(photoBrowser:photoAtIndex:selectedChanged:)]) {
            [self.delegate photoBrowser:self photoAtIndex:index selectedChanged:selected];
        }
    }
}
- (UIImage *)imageForPhoto:(id<RTImagePickerPhoto>)photo {
    if (photo) {
        if ([photo underlyingImage]) {
            return [photo underlyingImage];
        } else {
            [photo loadUnderlyingImageAndNotify];
        }
    }
    return nil;
}
- (void)loadAdjacentPhotosIfNecessary:(id<RTImagePickerPhoto>)photo {
    RTImagePickerZoomingScrollView *page = [self pageDisplayingPhoto:photo];
    if (page) {
        NSUInteger pageIndex = page.index;
        if (_currentPageIndex == pageIndex) {
            if (pageIndex > 0) {
                id <RTImagePickerPhoto> photo = [self photoAtIndex:pageIndex-1];
                if (![photo underlyingImage]) {
                    [photo loadUnderlyingImageAndNotify];
                    MWLog(@"Pre-loading image at index %lu", (unsigned long)pageIndex-1);
                }
            }
            if (pageIndex < [self numberOfPhotos] - 1) {
                id <RTImagePickerPhoto> photo = [self photoAtIndex:pageIndex+1];
                if (![photo underlyingImage]) {
                    [photo loadUnderlyingImageAndNotify];
                    MWLog(@"Pre-loading image at index %lu", (unsigned long)pageIndex+1);
                }
            }
        }
    }
}
#pragma mark - MWPhoto Loading Notification
- (void)handleMWPhotoLoadingDidEndNotification:(NSNotification *)notification {
    id <RTImagePickerPhoto> photo = [notification object];
    RTImagePickerZoomingScrollView *page = [self pageDisplayingPhoto:photo];
    if (page) {
        if ([photo underlyingImage]) {
            [page displayImage];
            [self loadAdjacentPhotosIfNecessary:photo];
        } else {
            [page displayImageFailure];
        }
        [self updateNavigation];
    }
}
#pragma mark - Paging
- (void)tilePages {
    CGRect visibleBounds = _pagingScrollView.bounds;
    NSInteger iFirstIndex = (NSInteger)floorf((CGRectGetMinX(visibleBounds)+PADDING*2) / CGRectGetWidth(visibleBounds));
    NSInteger iLastIndex  = (NSInteger)floorf((CGRectGetMaxX(visibleBounds)-PADDING*2-1) / CGRectGetWidth(visibleBounds));
    if (iFirstIndex < 0) iFirstIndex = 0;
    if (iFirstIndex > [self numberOfPhotos] - 1) iFirstIndex = [self numberOfPhotos] - 1;
    if (iLastIndex < 0) iLastIndex = 0;
    if (iLastIndex > [self numberOfPhotos] - 1) iLastIndex = [self numberOfPhotos] - 1;
    NSInteger pageIndex;
    for (RTImagePickerZoomingScrollView *page in _visiblePages) {
        pageIndex = page.index;
        if (pageIndex < (NSUInteger)iFirstIndex || pageIndex > (NSUInteger)iLastIndex) {
            [_recycledPages addObject:page];
            [page.selectedButton removeFromSuperview];
            [page.playButton removeFromSuperview];
            [page prepareForReuse];
            [page removeFromSuperview];
            MWLog(@"Removed page at index %lu", (unsigned long)pageIndex);
        }
    }
    [_visiblePages minusSet:_recycledPages];
    while (_recycledPages.count > 2) 
        [_recycledPages removeObject:[_recycledPages anyObject]];
    for (NSUInteger index = (NSUInteger)iFirstIndex; index <= (NSUInteger)iLastIndex; index++) {
        if (![self isDisplayingPageForIndex:index]) {
            RTImagePickerZoomingScrollView *page = [self dequeueRecycledPage];
            if (!page) {
                page = [[RTImagePickerZoomingScrollView alloc] initWithPhotoBrowser:self];
            }
            [_visiblePages addObject:page];
            [self configurePage:page forIndex:index];
            [_pagingScrollView addSubview:page];
            MWLog(@"Added page at index %lu", (unsigned long)index);
            if (page.displayingVideo) {
                UIButton *playButton = [UIButton buttonWithType:UIButtonTypeCustom];
                [playButton setImage:[UIImage imageForResourcePath:@"MWPhotoBrowser.bundle/PlayButtonOverlayLarge" ofType:@"png" inBundle:[NSBundle bundleForClass:[self class]]] forState:UIControlStateNormal];
                [playButton setImage:[UIImage imageForResourcePath:@"MWPhotoBrowser.bundle/PlayButtonOverlayLargeTap" ofType:@"png" inBundle:[NSBundle bundleForClass:[self class]]] forState:UIControlStateHighlighted];
                [playButton addTarget:self action:@selector(playButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
                [playButton sizeToFit];
                playButton.frame = [self frameForPlayButton:playButton atIndex:index];
                [_pagingScrollView addSubview:playButton];
                page.playButton = playButton;
            }
            if (self.displaySelectionButtons) {
                UIButton *selectedButton = [UIButton buttonWithType:UIButtonTypeCustom];
                [selectedButton setImage:[UIImage imageForResourcePath:@"MWPhotoBrowser.bundle/ImageSelectedOff" ofType:@"png" inBundle:[NSBundle bundleForClass:[self class]]] forState:UIControlStateNormal];
                UIImage *selectedOnImage;
                if (self.customImageSelectedIconName) {
                    selectedOnImage = [UIImage imageNamed:self.customImageSelectedIconName];
                } else {
                    selectedOnImage = [UIImage imageForResourcePath:@"MWPhotoBrowser.bundle/ImageSelectedOn" ofType:@"png" inBundle:[NSBundle bundleForClass:[self class]]];
                }
                [selectedButton setImage:selectedOnImage forState:UIControlStateSelected];
                [selectedButton sizeToFit];
                selectedButton.adjustsImageWhenHighlighted = NO;
                [selectedButton addTarget:self action:@selector(selectedButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
                selectedButton.frame = [self frameForSelectedButton:selectedButton atIndex:index];
                [_pagingScrollView addSubview:selectedButton];
                page.selectedButton = selectedButton;
                selectedButton.selected = [self photoIsSelectedAtIndex:index];
            }
        }
    }
}
- (void)updateVisiblePageStates {
    NSSet *copy = [_visiblePages copy];
    for (RTImagePickerZoomingScrollView *page in copy) {
        page.selectedButton.selected = [self photoIsSelectedAtIndex:page.index];
    }
}
- (BOOL)isDisplayingPageForIndex:(NSUInteger)index {
    for (RTImagePickerZoomingScrollView *page in _visiblePages)
        if (page.index == index) return YES;
    return NO;
}
- (RTImagePickerZoomingScrollView *)pageDisplayedAtIndex:(NSUInteger)index {
    RTImagePickerZoomingScrollView *thePage = nil;
    for (RTImagePickerZoomingScrollView *page in _visiblePages) {
        if (page.index == index) {
            thePage = page; break;
        }
    }
    return thePage;
}
- (RTImagePickerZoomingScrollView *)pageDisplayingPhoto:(id<RTImagePickerPhoto>)photo {
    RTImagePickerZoomingScrollView *thePage = nil;
    for (RTImagePickerZoomingScrollView *page in _visiblePages) {
        if (page.photo == photo) {
            thePage = page; break;
        }
    }
    return thePage;
}
- (void)configurePage:(RTImagePickerZoomingScrollView *)page forIndex:(NSUInteger)index {
    page.frame = [self frameForPageAtIndex:index];
    page.index = index;
    page.photo = [self photoAtIndex:index];
}
- (RTImagePickerZoomingScrollView *)dequeueRecycledPage {
    RTImagePickerZoomingScrollView *page = [_recycledPages anyObject];
    if (page) {
        [_recycledPages removeObject:page];
    }
    return page;
}
- (void)didStartViewingPageAtIndex:(NSUInteger)index {
    if (![self numberOfPhotos]) {
        [self setControlsHidden:NO animated:YES permanent:YES];
        return;
    }
    if (!_rotating || index != _currentVideoIndex) {
        [self clearCurrentVideo];
    }
    NSUInteger i;
    if (index > 0) {
        for (i = 0; i < index-1; i++) {
            id photo = [_photos objectAtIndex:i];
            if (photo != [NSNull null]) {
                [photo unloadUnderlyingImage];
                [_photos replaceObjectAtIndex:i withObject:[NSNull null]];
                MWLog(@"Released underlying image at index %lu", (unsigned long)i);
            }
        }
    }
    if (index < [self numberOfPhotos] - 1) {
        for (i = index + 2; i < _photos.count; i++) {
            id photo = [_photos objectAtIndex:i];
            if (photo != [NSNull null]) {
                [photo unloadUnderlyingImage];
                [_photos replaceObjectAtIndex:i withObject:[NSNull null]];
                MWLog(@"Released underlying image at index %lu", (unsigned long)i);
            }
        }
    }
    id <RTImagePickerPhoto> currentPhoto = [self photoAtIndex:index];
    if ([currentPhoto underlyingImage]) {
        [self loadAdjacentPhotosIfNecessary:currentPhoto];
    }
    if (index != _previousPageIndex) {
        if ([_delegate respondsToSelector:@selector(photoBrowser:didDisplayPhotoAtIndex:)])
            [_delegate photoBrowser:self didDisplayPhotoAtIndex:index];
        _previousPageIndex = index;
    }
    [self updateNavigation];
}
#pragma mark - Frame Calculations
- (CGRect)frameForPagingScrollView {
    CGRect frame = self.view.bounds;
    frame.origin.x -= PADDING;
    frame.size.width += (2 * PADDING);
    return CGRectIntegral(frame);
}
- (CGRect)frameForPageAtIndex:(NSUInteger)index {
    CGRect bounds = _pagingScrollView.bounds;
    CGRect pageFrame = bounds;
    pageFrame.size.width -= (2 * PADDING);
    pageFrame.origin.x = (bounds.size.width * index) + PADDING;
    return CGRectIntegral(pageFrame);
}
- (CGSize)contentSizeForPagingScrollView {
    CGRect bounds = _pagingScrollView.bounds;
    return CGSizeMake(bounds.size.width * [self numberOfPhotos], bounds.size.height);
}
- (CGPoint)contentOffsetForPageAtIndex:(NSUInteger)index {
    CGFloat pageWidth = _pagingScrollView.bounds.size.width;
    CGFloat newOffset = index * pageWidth;
    return CGPointMake(newOffset, 0);
}
- (CGRect)frameForToolbarAtOrientation:(UIInterfaceOrientation)orientation {
    CGFloat height = 44;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone &&
        UIInterfaceOrientationIsLandscape(orientation)) height = 32;
    return CGRectIntegral(CGRectMake(0, self.view.bounds.size.height - height, self.view.bounds.size.width, height));
}
- (CGRect)frameForSelectedButton:(UIButton *)selectedButton atIndex:(NSUInteger)index {
    CGRect pageFrame = [self frameForPageAtIndex:index];
    CGFloat padding = 20;
    CGFloat yOffset = 0;
    if (![self areControlsHidden]) {
        UINavigationBar *navBar = self.navigationController.navigationBar;
        yOffset = navBar.frame.origin.y + navBar.frame.size.height;
    }
    CGRect selectedButtonFrame = CGRectMake(pageFrame.origin.x + pageFrame.size.width - selectedButton.frame.size.width - padding,
                                            padding + yOffset,
                                            selectedButton.frame.size.width,
                                            selectedButton.frame.size.height);
    return CGRectIntegral(selectedButtonFrame);
}
- (CGRect)frameForPlayButton:(UIButton *)playButton atIndex:(NSUInteger)index {
    CGRect pageFrame = [self frameForPageAtIndex:index];
    return CGRectMake(floorf(CGRectGetMidX(pageFrame) - playButton.frame.size.width / 2),
                      floorf(CGRectGetMidY(pageFrame) - playButton.frame.size.height / 2),
                      playButton.frame.size.width,
                      playButton.frame.size.height);
}
#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (!_viewIsActive || _performingLayout || _rotating) return;
    [self tilePages];
    CGRect visibleBounds = _pagingScrollView.bounds;
    NSInteger index = (NSInteger)(floorf(CGRectGetMidX(visibleBounds) / CGRectGetWidth(visibleBounds)));
    if (index < 0) index = 0;
    if (index > [self numberOfPhotos] - 1) index = [self numberOfPhotos] - 1;
    NSUInteger previousCurrentPage = _currentPageIndex;
    _currentPageIndex = index;
    if (_currentPageIndex != previousCurrentPage) {
        [self didStartViewingPageAtIndex:index];
    }
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self setControlsHidden:YES animated:YES permanent:NO];
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    [self updateNavigation];
}
#pragma mark - Navigation
- (void)updateNavigation {
    NSUInteger numberOfPhotos = [self numberOfPhotos];
    if (numberOfPhotos > 1) {
        if ([_delegate respondsToSelector:@selector(photoBrowser:titleForPhotoAtIndex:)]) {
            self.title = [_delegate photoBrowser:self titleForPhotoAtIndex:_currentPageIndex];
        } else {
            self.title = [NSString stringWithFormat:@"%lu / %lu", (unsigned long)(_currentPageIndex+1), (unsigned long)numberOfPhotos];
        }
    } else {
        self.title = [NSString stringWithFormat:@"%lu / %lu", (unsigned long)(_currentPageIndex+1), (unsigned long)numberOfPhotos];
    }
    _previousButton.enabled = (_currentPageIndex > 0);
    _nextButton.enabled = (_currentPageIndex < numberOfPhotos - 1);
}
- (void)jumpToPageAtIndex:(NSUInteger)index animated:(BOOL)animated {
    if (index < [self numberOfPhotos]) {
        CGRect pageFrame = [self frameForPageAtIndex:index];
        [_pagingScrollView setContentOffset:CGPointMake(pageFrame.origin.x - PADDING, 0) animated:animated];
        [self updateNavigation];
    }
    [self hideControlsAfterDelay];
}
- (void)gotoPreviousPage {
    [self showPreviousPhotoAnimated:NO];
}
- (void)gotoNextPage {
    [self showNextPhotoAnimated:NO];
}
- (void)showPreviousPhotoAnimated:(BOOL)animated {
    [self jumpToPageAtIndex:_currentPageIndex-1 animated:animated];
}
- (void)showNextPhotoAnimated:(BOOL)animated {
    [self jumpToPageAtIndex:_currentPageIndex+1 animated:animated];
}
#pragma mark - Interactions
- (void)selectedButtonTapped:(id)sender {
    UIButton *selectedButton = (UIButton *)sender;
    selectedButton.selected = !selectedButton.selected;
    NSUInteger index = NSUIntegerMax;
    for (RTImagePickerZoomingScrollView *page in _visiblePages) {
        if (page.selectedButton == selectedButton) {
            index = page.index;
            break;
        }
    }
    if (index != NSUIntegerMax) {
        [self setPhotoSelected:selectedButton.selected atIndex:index];
    }
}
- (void)playButtonTapped:(id)sender {
    UIButton *playButton = (UIButton *)sender;
    NSUInteger index = NSUIntegerMax;
    for (RTImagePickerZoomingScrollView *page in _visiblePages) {
        if (page.playButton == playButton) {
            index = page.index;
            break;
        }
    }
    if (index != NSUIntegerMax) {
        if (!_currentVideoPlayerViewController) {
            [self playVideoAtIndex:index];
        }
    }
}
#pragma mark - Video
- (void)playVideoAtIndex:(NSUInteger)index {
    id photo = [self photoAtIndex:index];
    if ([photo respondsToSelector:@selector(getVideoURL:)]) {
        _currentVideoIndex = index;
        [self clearCurrentVideo];
        [self setVideoLoadingIndicatorVisible:YES atPageIndex:index];
        [photo getVideoURL:^(NSURL *url) {
            if (url) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self _playVideo:url atPhotoIndex:index];
                });
            } else {
                [self setVideoLoadingIndicatorVisible:NO atPageIndex:index];
            }
        }];
    }
}
- (void)_playVideo:(NSURL *)videoURL atPhotoIndex:(NSUInteger)index {
    _currentVideoPlayerViewController = [[MPMoviePlayerViewController alloc] initWithContentURL:videoURL];
    [_currentVideoPlayerViewController.moviePlayer prepareToPlay];
    _currentVideoPlayerViewController.moviePlayer.shouldAutoplay = YES;
    _currentVideoPlayerViewController.moviePlayer.scalingMode = MPMovieScalingModeAspectFit;
    _currentVideoPlayerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [[NSNotificationCenter defaultCenter] removeObserver:_currentVideoPlayerViewController
                                                    name:MPMoviePlayerPlaybackDidFinishNotification
                                                  object:_currentVideoPlayerViewController.moviePlayer];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(videoFinishedCallback:)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification
                                               object:_currentVideoPlayerViewController.moviePlayer];
    [self presentViewController:_currentVideoPlayerViewController animated:YES completion:nil];
}
- (void)videoFinishedCallback:(NSNotification*)notification {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:MPMoviePlayerPlaybackDidFinishNotification
                                                  object:_currentVideoPlayerViewController.moviePlayer];
    [self clearCurrentVideo];
    BOOL error = [[[notification userInfo] objectForKey:MPMoviePlayerPlaybackDidFinishReasonUserInfoKey] intValue] == MPMovieFinishReasonPlaybackError;
    if (error) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self dismissViewControllerAnimated:YES completion:nil];
        });
    } else {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
- (void)clearCurrentVideo {
    if (!_currentVideoPlayerViewController) return;
    [_currentVideoLoadingIndicator removeFromSuperview];
    _currentVideoPlayerViewController = nil;
    _currentVideoLoadingIndicator = nil;
    _currentVideoIndex = NSUIntegerMax;
}
- (void)setVideoLoadingIndicatorVisible:(BOOL)visible atPageIndex:(NSUInteger)pageIndex {
    if (_currentVideoLoadingIndicator && !visible) {
        [_currentVideoLoadingIndicator removeFromSuperview];
        _currentVideoLoadingIndicator = nil;
    } else if (!_currentVideoLoadingIndicator && visible) {
        _currentVideoLoadingIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectZero];
        [_currentVideoLoadingIndicator sizeToFit];
        [_currentVideoLoadingIndicator startAnimating];
        [_pagingScrollView addSubview:_currentVideoLoadingIndicator];
        [self positionVideoLoadingIndicator];
    }
}
- (void)positionVideoLoadingIndicator {
    if (_currentVideoLoadingIndicator && _currentVideoIndex != NSUIntegerMax) {
        CGRect frame = [self frameForPageAtIndex:_currentVideoIndex];
        _currentVideoLoadingIndicator.center = CGPointMake(CGRectGetMidX(frame), CGRectGetMidY(frame));
    }
}
#pragma mark - Control Hiding / Showing
- (void)setControlsHidden:(BOOL)hidden animated:(BOOL)animated permanent:(BOOL)permanent {
    if (![self numberOfPhotos] || _alwaysShowControls)
        hidden = NO;
    [self cancelControlHiding];
    CGFloat animatonOffset = 20;
    CGFloat animationDuration = (animated ? 0.35 : 0);
    if (!_leaveStatusBarAlone) {
        if (!_isVCBasedStatusBarAppearance) {
            [[UIApplication sharedApplication] setStatusBarHidden:hidden withAnimation:animated ? UIStatusBarAnimationSlide : UIStatusBarAnimationNone];
        } else {
            _statusBarShouldBeHidden = hidden;
            [UIView animateWithDuration:animationDuration animations:^(void) {
                [self setNeedsStatusBarAppearanceUpdate];
            } completion:^(BOOL finished) {}];
        }
    }
    if ([self areControlsHidden] && !hidden && animated) {
        _toolbar.frame = CGRectOffset([self frameForToolbarAtOrientation:self.interfaceOrientation], 0, animatonOffset);
    }
    if([self.delegate respondsToSelector:@selector(photoBrowserDidChangeHidden:State:)]) {
        [self.delegate photoBrowserDidChangeHidden:self State:hidden];
    }
    [UIView animateWithDuration:animationDuration animations:^(void) {
        CGFloat alpha = hidden ? 0 : 1;
        [self.navigationController.navigationBar setAlpha:alpha];
        _toolbar.frame = [self frameForToolbarAtOrientation:self.interfaceOrientation];
        if (hidden) _toolbar.frame = CGRectOffset(_toolbar.frame, 0, animatonOffset);
        _toolbar.alpha = alpha;
        for (RTImagePickerZoomingScrollView *page in _visiblePages) {
            if (page.selectedButton) {
                UIButton *v = page.selectedButton;
                CGRect newFrame = [self frameForSelectedButton:v atIndex:0];
                newFrame.origin.x = v.frame.origin.x;
                v.frame = newFrame;
            }
        }
    } completion:^(BOOL finished) {}];
    if (!permanent) [self hideControlsAfterDelay];
}
- (BOOL)prefersStatusBarHidden {
    if (!_leaveStatusBarAlone) {
        return _statusBarShouldBeHidden;
    } else {
        return [self presentingViewControllerPrefersStatusBarHidden];
    }
}
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    return UIStatusBarAnimationSlide;
}
- (void)cancelControlHiding {
    if (_controlVisibilityTimer) {
        [_controlVisibilityTimer invalidate];
        _controlVisibilityTimer = nil;
    }
}
- (void)hideControlsAfterDelay {
    if (![self areControlsHidden]) {
        [self cancelControlHiding];
        _controlVisibilityTimer = [NSTimer scheduledTimerWithTimeInterval:self.delayToHideElements target:self selector:@selector(hideControls) userInfo:nil repeats:NO];
    }
}
- (BOOL)areControlsHidden { return (_toolbar.alpha == 0); }
- (void)hideControls { [self setControlsHidden:YES animated:YES permanent:NO]; }
- (void)showControls { [self setControlsHidden:NO animated:YES permanent:NO]; }
- (void)toggleControls { [self setControlsHidden:![self areControlsHidden] animated:YES permanent:NO]; }
#pragma mark - Properties
- (void)setCurrentPhotoIndex:(NSUInteger)index {
    NSUInteger photoCount = [self numberOfPhotos];
    if (photoCount == 0) {
        index = 0;
    } else {
        if (index >= photoCount)
            index = [self numberOfPhotos]-1;
    }
    _currentPageIndex = index;
    if ([self isViewLoaded]) {
        [self jumpToPageAtIndex:index animated:NO];
        if (!_viewIsActive)
            [self tilePages]; 
    }
}
@end
