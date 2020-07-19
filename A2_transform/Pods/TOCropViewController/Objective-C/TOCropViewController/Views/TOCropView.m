#include <math.h>
#import "TOCropView.h"
#import "TOCropOverlayView.h"
#import "TOCropScrollView.h"
#define TOCROPVIEW_BACKGROUND_COLOR [UIColor colorWithWhite:0.12f alpha:1.0f]
static const CGFloat kTOCropViewPadding = 14.0f;
static const NSTimeInterval kTOCropTimerDuration = 0.8f;
static const CGFloat kTOCropViewMinimumBoxSize = 42.0f;
static const CGFloat kTOCropViewCircularPathRadius = 300.0f;
static const CGFloat kTOMaximumZoomScale = 15.0f;
typedef NS_ENUM(NSInteger, TOCropViewOverlayEdge) {
    TOCropViewOverlayEdgeNone,
    TOCropViewOverlayEdgeTopLeft,
    TOCropViewOverlayEdgeTop,
    TOCropViewOverlayEdgeTopRight,
    TOCropViewOverlayEdgeRight,
    TOCropViewOverlayEdgeBottomRight,
    TOCropViewOverlayEdgeBottom,
    TOCropViewOverlayEdgeBottomLeft,
    TOCropViewOverlayEdgeLeft
};
@interface TOCropView () <UIScrollViewDelegate, UIGestureRecognizerDelegate>
@property (nonatomic, strong, readwrite) UIImage *image;
@property (nonatomic, assign, readwrite) TOCropViewCroppingStyle croppingStyle;
@property (nonatomic, strong) UIImageView *backgroundImageView;     
@property (nonatomic, strong) UIView *backgroundContainerView;      
@property (nonatomic, strong, readwrite) UIView *foregroundContainerView;@property (nonatomic, strong) UIImageView *foregroundImageView; 
@property (nonatomic, strong) TOCropScrollView *scrollView;         
@property (nonatomic, strong) UIView *overlayView;                  
@property (nonatomic, strong) UIView *translucencyView;             
@property (nonatomic, strong) id translucencyEffect;                
@property (nonatomic, strong, readwrite) TOCropOverlayView *gridOverlayView;   
@property (nonatomic, strong) CAShapeLayer *circularMaskLayer;      
@property (nonatomic, strong) UIPanGestureRecognizer *gridPanGestureRecognizer; 
@property (nonatomic, assign) BOOL applyInitialCroppedImageFrame; 
@property (nonatomic, assign) TOCropViewOverlayEdge tappedEdge; 
@property (nonatomic, assign) CGRect cropOriginFrame;     
@property (nonatomic, assign) CGPoint panOriginPoint;     
@property (nonatomic, assign, readwrite) CGRect cropBoxFrame;  
@property (nonatomic, strong) NSTimer *resetTimer;  
@property (nonatomic, assign) BOOL editing;         
@property (nonatomic, assign) BOOL disableForgroundMatching; 
@property (nonatomic, assign) CGPoint rotationContentOffset;
@property (nonatomic, assign) CGSize  rotationContentSize;
@property (nonatomic, assign) CGRect  rotationBoundFrame;
@property (nonatomic, readonly) CGRect contentBounds; 
@property (nonatomic, readonly) CGSize imageSize;     
@property (nonatomic, readonly) BOOL hasAspectRatio;  
@property (nonatomic, assign) CGSize cropBoxLastEditedSize; 
@property (nonatomic, assign) NSInteger cropBoxLastEditedAngle; 
@property (nonatomic, assign) CGFloat cropBoxLastEditedZoomScale; 
@property (nonatomic, assign) CGFloat cropBoxLastEditedMinZoomScale; 
@property (nonatomic, assign) BOOL rotateAnimationInProgress;   
@property (nonatomic, assign) CGSize originalCropBoxSize; 
@property (nonatomic, assign) CGPoint originalContentOffset; 
@property (nonatomic, assign, readwrite) BOOL canBeReset;
@property (nonatomic, assign) BOOL dynamicBlurEffect;
@property (nonatomic, assign) NSInteger restoreAngle;
@property (nonatomic, assign) CGRect    restoreImageCropFrame;
@property (nonatomic, assign) BOOL initialSetupPerformed;
@end
@implementation TOCropView
- (instancetype)initWithImage:(UIImage *)image
{
    return [self initWithCroppingStyle:TOCropViewCroppingStyleDefault image:image];
}
- (instancetype)initWithCroppingStyle:(TOCropViewCroppingStyle)style image:(UIImage *)image
{
    if (self = [super init]) {
        _image = image;
        _croppingStyle = style;
        [self setup];
    }
    return self;
}
- (void)setup
{
    __weak typeof(self) weakSelf = self;
    BOOL circularMode = (self.croppingStyle == TOCropViewCroppingStyleCircular);
    self.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.backgroundColor = TOCROPVIEW_BACKGROUND_COLOR;
    self.cropBoxFrame = CGRectZero;
    self.applyInitialCroppedImageFrame = NO;
    self.editing = NO;
    self.cropBoxResizeEnabled = !circularMode;
    self.aspectRatio = circularMode ? (CGSize){1.0f, 1.0f} : CGSizeZero;
    self.resetAspectRatioEnabled = !circularMode;
    self.restoreImageCropFrame = CGRectZero;
    self.restoreAngle = 0;
    self.cropAdjustingDelay = kTOCropTimerDuration;
    self.cropViewPadding = kTOCropViewPadding;
    self.maximumZoomScale = kTOMaximumZoomScale;
    self.dynamicBlurEffect = ([[[UIDevice currentDevice] systemVersion] compare:@"9.0" options:NSNumericSearch] != NSOrderedAscending);
    self.scrollView = [[TOCropScrollView alloc] initWithFrame:self.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.scrollView.alwaysBounceHorizontal = YES;
    self.scrollView.alwaysBounceVertical = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.delegate = self;
    [self addSubview:self.scrollView];
    if (@available(iOS 11.0, *)) {
        self.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    self.scrollView.touchesBegan = ^{ [weakSelf startEditing]; };
    self.scrollView.touchesEnded = ^{ [weakSelf startResetTimer]; };
    self.backgroundImageView = [[UIImageView alloc] initWithImage:self.image];
    self.backgroundImageView.layer.minificationFilter = kCAFilterTrilinear;
    self.backgroundContainerView = [[UIView alloc] initWithFrame:self.backgroundImageView.frame];
    [self.backgroundContainerView addSubview:self.backgroundImageView];
    [self.scrollView addSubview:self.backgroundContainerView];
    self.overlayView = [[UIView alloc] initWithFrame:self.bounds];
    self.overlayView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.overlayView.backgroundColor = [self.backgroundColor colorWithAlphaComponent:0.35f];
    self.overlayView.hidden = NO;
    self.overlayView.userInteractionEnabled = NO;
    [self addSubview:self.overlayView];
    if (NSClassFromString(@"UIVisualEffectView")) {
        self.translucencyEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        self.translucencyView = [[UIVisualEffectView alloc] initWithEffect:self.translucencyEffect];
        self.translucencyView.frame = self.bounds;
    }
    else {
        UIToolbar *toolbar = [[UIToolbar alloc] init];
        toolbar.barStyle = UIBarStyleBlack;
        self.translucencyView = toolbar;
        self.translucencyView.frame = CGRectInset(self.bounds, -1.0f, -1.0f);
    }
    self.translucencyView.hidden = NO;
    self.translucencyView.userInteractionEnabled = NO;
    self.translucencyView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:self.translucencyView];
    self.foregroundContainerView = [[UIView alloc] initWithFrame:(CGRect){0,0,200,200}];
    self.foregroundContainerView.clipsToBounds = YES;
    self.foregroundContainerView.userInteractionEnabled = NO;
    [self addSubview:self.foregroundContainerView];
    self.foregroundImageView = [[UIImageView alloc] initWithImage:self.image];
    self.foregroundImageView.layer.minificationFilter = kCAFilterTrilinear;
    [self.foregroundContainerView addSubview:self.foregroundImageView];
    if (@available(iOS 11.0, *)) {
        self.foregroundImageView.accessibilityIgnoresInvertColors = YES;
        self.backgroundImageView.accessibilityIgnoresInvertColors = YES;
    }
    if (circularMode) {
        UIBezierPath *circlePath = [UIBezierPath bezierPathWithOvalInRect:(CGRect){0,0,kTOCropViewCircularPathRadius, kTOCropViewCircularPathRadius}];
        self.circularMaskLayer = [[CAShapeLayer alloc] init];
        self.circularMaskLayer.path = circlePath.CGPath;
        self.foregroundContainerView.layer.mask = self.circularMaskLayer;
        return;
    }
    self.gridOverlayView = [[TOCropOverlayView alloc] initWithFrame:self.foregroundContainerView.frame];
    self.gridOverlayView.userInteractionEnabled = NO;
    self.gridOverlayView.gridHidden = YES;
    [self addSubview:self.gridOverlayView];
    self.gridPanGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(gridPanGestureRecognized:)];
    self.gridPanGestureRecognizer.delegate = self;
    [self.scrollView.panGestureRecognizer requireGestureRecognizerToFail:self.gridPanGestureRecognizer];
    [self addGestureRecognizer:self.gridPanGestureRecognizer];
}
#pragma mark - View Layout -
- (void)performInitialSetup
{
    if (self.initialSetupPerformed) {
        return;
    }
    self.initialSetupPerformed = YES;
    [self layoutInitialImage];
    if (self.restoreAngle != 0) {
        self.angle = self.restoreAngle;
        self.restoreAngle = 0;
        self.cropBoxLastEditedAngle = self.angle;
        [self captureStateForImageRotation];
    }
    if (!CGRectIsEmpty(self.restoreImageCropFrame)) {
        self.imageCropFrame = self.restoreImageCropFrame;
        self.restoreImageCropFrame = CGRectZero;
    }
    [self checkForCanReset];
}
- (void)layoutInitialImage
{
    CGSize imageSize = self.imageSize;
    self.scrollView.contentSize = imageSize;
    CGRect bounds = self.contentBounds;
    CGSize boundsSize = bounds.size;
    CGFloat scale = 0.0f;
    scale = MIN(CGRectGetWidth(bounds)/imageSize.width, CGRectGetHeight(bounds)/imageSize.height);
    CGSize scaledImageSize = (CGSize){floorf(imageSize.width * scale), floorf(imageSize.height * scale)};
    CGSize cropBoxSize = CGSizeZero;
    if (self.hasAspectRatio) {
        CGFloat ratioScale = (self.aspectRatio.width / self.aspectRatio.height); 
        CGSize fullSizeRatio = (CGSize){boundsSize.height * ratioScale, boundsSize.height};
        CGFloat fitScale = MIN(boundsSize.width/fullSizeRatio.width, boundsSize.height/fullSizeRatio.height);
        cropBoxSize = (CGSize){fullSizeRatio.width * fitScale, fullSizeRatio.height * fitScale};
        scale = MAX(cropBoxSize.width/imageSize.width, cropBoxSize.height/imageSize.height);
    }
    CGSize scaledSize = (CGSize){floorf(imageSize.width * scale), floorf(imageSize.height * scale)};
    self.scrollView.minimumZoomScale = scale;
    self.scrollView.maximumZoomScale = scale * self.maximumZoomScale;
    CGRect frame = CGRectZero;
    frame.size = self.hasAspectRatio ? cropBoxSize : scaledSize;
    frame.origin.x = bounds.origin.x + floorf((CGRectGetWidth(bounds) - frame.size.width) * 0.5f);
    frame.origin.y = bounds.origin.y + floorf((CGRectGetHeight(bounds) - frame.size.height) * 0.5f);
    self.cropBoxFrame = frame;
    self.scrollView.zoomScale = self.scrollView.minimumZoomScale;
    self.scrollView.contentSize = scaledSize;
    if (frame.size.width < scaledSize.width - FLT_EPSILON || frame.size.height < scaledSize.height - FLT_EPSILON) {
        CGPoint offset = CGPointZero;
        offset.x = -floorf(CGRectGetMidX(bounds) - (scaledSize.width * 0.5f));
        offset.y = -floorf(CGRectGetMidY(bounds) - (scaledSize.height * 0.5f));
        self.scrollView.contentOffset = offset;
    }
    self.cropBoxLastEditedAngle = 0;
    [self captureStateForImageRotation];
    self.originalCropBoxSize = self.resetAspectRatioEnabled ? scaledImageSize : cropBoxSize;
    self.originalContentOffset = self.scrollView.contentOffset;
    [self checkForCanReset];
    [self matchForegroundToBackground];
}
- (void)prepareforRotation
{
    self.rotationContentOffset = self.scrollView.contentOffset;
    self.rotationContentSize   = self.scrollView.contentSize;
    self.rotationBoundFrame     = self.contentBounds;
}
- (void)performRelayoutForRotation
{
    CGRect cropFrame = self.cropBoxFrame;
    CGRect contentFrame = self.contentBounds;
    CGFloat scale = MIN(contentFrame.size.width / cropFrame.size.width, contentFrame.size.height / cropFrame.size.height);
    self.scrollView.minimumZoomScale *= scale;
    self.scrollView.zoomScale *= scale;
    cropFrame.size.width  = floorf(cropFrame.size.width * scale);
    cropFrame.size.height = floorf(cropFrame.size.height * scale);
    cropFrame.origin.x    = floorf(contentFrame.origin.x + ((contentFrame.size.width - cropFrame.size.width) * 0.5f));
    cropFrame.origin.y    = floorf(contentFrame.origin.y + ((contentFrame.size.height - cropFrame.size.height) * 0.5f));
    self.cropBoxFrame = cropFrame;
    [self captureStateForImageRotation];
    CGPoint oldMidPoint = (CGPoint){CGRectGetMidX(self.rotationBoundFrame), CGRectGetMidY(self.rotationBoundFrame)};
    CGPoint contentCenter = (CGPoint){self.rotationContentOffset.x + oldMidPoint.x, self.rotationContentOffset.y + oldMidPoint.y};
    CGPoint normalizedCenter = CGPointZero;
    normalizedCenter.x = contentCenter.x / self.rotationContentSize.width;
    normalizedCenter.y = contentCenter.y / self.rotationContentSize.height;
    CGPoint newMidPoint = (CGPoint){CGRectGetMidX(self.contentBounds),CGRectGetMidY(self.contentBounds)};
    CGPoint translatedContentOffset = CGPointZero;
    translatedContentOffset.x = self.scrollView.contentSize.width * normalizedCenter.x;
    translatedContentOffset.y = self.scrollView.contentSize.height * normalizedCenter.y;
    CGPoint offset = CGPointZero;
    offset.x = floorf(translatedContentOffset.x - newMidPoint.x);
    offset.y = floorf(translatedContentOffset.y - newMidPoint.y);
    offset.x = MAX(-self.scrollView.contentInset.left, offset.x);
    offset.y = MAX(-self.scrollView.contentInset.top, offset.y);
    CGPoint maximumOffset = CGPointZero;
    maximumOffset.x = (self.bounds.size.width - self.scrollView.contentInset.right) + self.scrollView.contentSize.width;
    maximumOffset.y = (self.bounds.size.height - self.scrollView.contentInset.bottom) + self.scrollView.contentSize.height;
    offset.x = MIN(offset.x, maximumOffset.x);
    offset.y = MIN(offset.y, maximumOffset.y);
    self.scrollView.contentOffset = offset;
    [self matchForegroundToBackground];
}
- (void)matchForegroundToBackground
{
    if (self.disableForgroundMatching)
        return;
    self.foregroundImageView.frame = [self.backgroundContainerView.superview convertRect:self.backgroundContainerView.frame toView:self.foregroundContainerView];
}
- (void)updateCropBoxFrameWithGesturePoint:(CGPoint)point
{
    CGRect frame = self.cropBoxFrame;
    CGRect originFrame = self.cropOriginFrame;
    CGRect contentFrame = self.contentBounds;
    point.x = MAX(contentFrame.origin.x - self.cropViewPadding, point.x);
    point.y = MAX(contentFrame.origin.y - self.cropViewPadding, point.y);
    CGFloat xDelta = ceilf(point.x - self.panOriginPoint.x);
    CGFloat yDelta = ceilf(point.y - self.panOriginPoint.y);
    CGFloat aspectRatio = (originFrame.size.width / originFrame.size.height);
    BOOL aspectHorizontal = NO, aspectVertical = NO;
    BOOL clampMinFromTop = NO, clampMinFromLeft = NO;
    switch (self.tappedEdge) {
        case TOCropViewOverlayEdgeLeft:
            if (self.aspectRatioLockEnabled) {
                aspectHorizontal = YES;
                xDelta = MAX(xDelta, 0);
                CGPoint scaleOrigin = (CGPoint){CGRectGetMaxX(originFrame), CGRectGetMidY(originFrame)};
                frame.size.height = frame.size.width / aspectRatio;
                frame.origin.y = scaleOrigin.y - (frame.size.height * 0.5f);
            }
            CGFloat newWidth = originFrame.size.width - xDelta;
            CGFloat newHeight = originFrame.size.height;
            if (MIN(newHeight, newWidth) / MAX(newHeight, newWidth) >= (double)_minimumAspectRatio) {
                frame.origin.x   = originFrame.origin.x + xDelta;
                frame.size.width = originFrame.size.width - xDelta;
            }
            clampMinFromLeft = YES;
            break;
        case TOCropViewOverlayEdgeRight:
            if (self.aspectRatioLockEnabled) {
                aspectHorizontal = YES;
                CGPoint scaleOrigin = (CGPoint){CGRectGetMinX(originFrame), CGRectGetMidY(originFrame)};
                frame.size.height = frame.size.width / aspectRatio;
                frame.origin.y = scaleOrigin.y - (frame.size.height * 0.5f);
                frame.size.width = originFrame.size.width + xDelta;
                frame.size.width = MIN(frame.size.width, contentFrame.size.height * aspectRatio);
            }
            else {
                CGFloat newWidth = originFrame.size.width + xDelta;
                CGFloat newHeight = originFrame.size.height;
                if (MIN(newHeight, newWidth) / MAX(newHeight, newWidth) >= (double)_minimumAspectRatio) {
                    frame.size.width = originFrame.size.width + xDelta;
                }
            }
            break;
        case TOCropViewOverlayEdgeBottom:
            if (self.aspectRatioLockEnabled) {
                aspectVertical = YES;
                CGPoint scaleOrigin = (CGPoint){CGRectGetMidX(originFrame), CGRectGetMinY(originFrame)};
                frame.size.width = frame.size.height * aspectRatio;
                frame.origin.x = scaleOrigin.x - (frame.size.width * 0.5f);
                frame.size.height = originFrame.size.height + yDelta;
                frame.size.height = MIN(frame.size.height, contentFrame.size.width / aspectRatio);
            }
            else {
                CGFloat newWidth = originFrame.size.width;
                CGFloat newHeight = originFrame.size.height + yDelta;
                if (MIN(newHeight, newWidth) / MAX(newHeight, newWidth) >= (double)_minimumAspectRatio) {
                    frame.size.height = originFrame.size.height + yDelta;
                }
            }
            break;
        case TOCropViewOverlayEdgeTop:
            if (self.aspectRatioLockEnabled) {
                aspectVertical = YES;
                yDelta = MAX(0,yDelta);
                CGPoint scaleOrigin = (CGPoint){CGRectGetMidX(originFrame), CGRectGetMaxY(originFrame)};
                frame.size.width = frame.size.height * aspectRatio;
                frame.origin.x = scaleOrigin.x - (frame.size.width * 0.5f);
                frame.origin.y    = originFrame.origin.y + yDelta;
                frame.size.height = originFrame.size.height - yDelta;
            }
            else {
                CGFloat newWidth = originFrame.size.width;
                CGFloat newHeight = originFrame.size.height - yDelta;
                if (MIN(newHeight, newWidth) / MAX(newHeight, newWidth) >= (double)_minimumAspectRatio) {
                    frame.origin.y    = originFrame.origin.y + yDelta;
                    frame.size.height = originFrame.size.height - yDelta;
                }
            }
            clampMinFromTop = YES;
            break;
        case TOCropViewOverlayEdgeTopLeft:
            if (self.aspectRatioLockEnabled) {
                xDelta = MAX(xDelta, 0);
                yDelta = MAX(yDelta, 0);
                CGPoint distance;
                distance.x = 1.0f - (xDelta / CGRectGetWidth(originFrame));
                distance.y = 1.0f - (yDelta / CGRectGetHeight(originFrame));
                CGFloat scale = (distance.x + distance.y) * 0.5f;
                frame.size.width = ceilf(CGRectGetWidth(originFrame) * scale);
                frame.size.height = ceilf(CGRectGetHeight(originFrame) * scale);
                frame.origin.x = originFrame.origin.x + (CGRectGetWidth(originFrame) - frame.size.width);
                frame.origin.y = originFrame.origin.y + (CGRectGetHeight(originFrame) - frame.size.height);
                aspectVertical = YES;
                aspectHorizontal = YES;
            }
            else {
                CGFloat newWidth = originFrame.size.width - xDelta;
                CGFloat newHeight = originFrame.size.height - yDelta;
                if (MIN(newHeight, newWidth) / MAX(newHeight, newWidth) >= (double)_minimumAspectRatio) {
                    frame.origin.x   = originFrame.origin.x + xDelta;
                    frame.size.width = originFrame.size.width - xDelta;
                    frame.origin.y   = originFrame.origin.y + yDelta;
                    frame.size.height = originFrame.size.height - yDelta;
                }
            }
            clampMinFromTop = YES;
            clampMinFromLeft = YES;
            break;
        case TOCropViewOverlayEdgeTopRight:
            if (self.aspectRatioLockEnabled) {
                xDelta = MIN(xDelta, 0);
                yDelta = MAX(yDelta, 0);
                CGPoint distance;
                distance.x = 1.0f - ((-xDelta) / CGRectGetWidth(originFrame));
                distance.y = 1.0f - ((yDelta) / CGRectGetHeight(originFrame));
                CGFloat scale = (distance.x + distance.y) * 0.5f;
                frame.size.width = ceilf(CGRectGetWidth(originFrame) * scale);
                frame.size.height = ceilf(CGRectGetHeight(originFrame) * scale);
                frame.origin.y = originFrame.origin.y + (CGRectGetHeight(originFrame) - frame.size.height);
                aspectVertical = YES;
                aspectHorizontal = YES;
            }
            else {
                CGFloat newWidth = originFrame.size.width + xDelta;
                CGFloat newHeight = originFrame.size.height - yDelta;
                if (MIN(newHeight, newWidth) / MAX(newHeight, newWidth) >= (double)_minimumAspectRatio) {
                    frame.size.width  = originFrame.size.width + xDelta;
                    frame.origin.y    = originFrame.origin.y + yDelta;
                    frame.size.height = originFrame.size.height - yDelta;
                }
            }
            clampMinFromTop = YES;
            break;
        case TOCropViewOverlayEdgeBottomLeft:
            if (self.aspectRatioLockEnabled) {
                CGPoint distance;
                distance.x = 1.0f - (xDelta / CGRectGetWidth(originFrame));
                distance.y = 1.0f - (-yDelta / CGRectGetHeight(originFrame));
                CGFloat scale = (distance.x + distance.y) * 0.5f;
                frame.size.width = ceilf(CGRectGetWidth(originFrame) * scale);
                frame.size.height = ceilf(CGRectGetHeight(originFrame) * scale);
                frame.origin.x = CGRectGetMaxX(originFrame) - frame.size.width;
                aspectVertical = YES;
                aspectHorizontal = YES;
            }
            else {
                CGFloat newWidth = originFrame.size.width - xDelta;
                CGFloat newHeight = originFrame.size.height + yDelta;
                if (MIN(newHeight, newWidth) / MAX(newHeight, newWidth) >= (double)_minimumAspectRatio) {
                    frame.size.height = originFrame.size.height + yDelta;
                    frame.origin.x    = originFrame.origin.x + xDelta;
                    frame.size.width  = originFrame.size.width - xDelta;
                }
            }
            clampMinFromLeft = YES;
            break;
        case TOCropViewOverlayEdgeBottomRight:
            if (self.aspectRatioLockEnabled) {
                CGPoint distance;
                distance.x = 1.0f - ((-1 * xDelta) / CGRectGetWidth(originFrame));
                distance.y = 1.0f - ((-1 * yDelta) / CGRectGetHeight(originFrame));
                CGFloat scale = (distance.x + distance.y) * 0.5f;
                frame.size.width = ceilf(CGRectGetWidth(originFrame) * scale);
                frame.size.height = ceilf(CGRectGetHeight(originFrame) * scale);
                aspectVertical = YES;
                aspectHorizontal = YES;
            }
            else {
                CGFloat newWidth = originFrame.size.width + xDelta;
                CGFloat newHeight = originFrame.size.height + yDelta;
                if (MIN(newHeight, newWidth) / MAX(newHeight, newWidth) >= (double)_minimumAspectRatio) {
                    frame.size.height = originFrame.size.height + yDelta;
                    frame.size.width = originFrame.size.width + xDelta;
                }
            }
            break;
        case TOCropViewOverlayEdgeNone: break;
    }
    CGSize minSize = (CGSize){kTOCropViewMinimumBoxSize, kTOCropViewMinimumBoxSize};
    CGSize maxSize = (CGSize){CGRectGetWidth(contentFrame), CGRectGetHeight(contentFrame)};
    if (self.aspectRatioLockEnabled && aspectHorizontal) {
        maxSize.height = contentFrame.size.width / aspectRatio;
        minSize.width = kTOCropViewMinimumBoxSize * aspectRatio;
    }
    if (self.aspectRatioLockEnabled && aspectVertical) {
        maxSize.width = contentFrame.size.height * aspectRatio;
        minSize.height = kTOCropViewMinimumBoxSize / aspectRatio;
    }
    if (clampMinFromLeft) {
        CGFloat maxWidth = CGRectGetMaxX(self.cropOriginFrame) - contentFrame.origin.x;
        frame.size.width = MIN(frame.size.width, maxWidth);
    }
    if (clampMinFromTop) {
        CGFloat maxHeight = CGRectGetMaxY(self.cropOriginFrame) - contentFrame.origin.y;
        frame.size.height = MIN(frame.size.height, maxHeight);
    }
    frame.size.width  = MAX(frame.size.width, minSize.width);
    frame.size.height = MAX(frame.size.height, minSize.height);
    frame.size.width  = MIN(frame.size.width, maxSize.width);
    frame.size.height = MIN(frame.size.height, maxSize.height);
    frame.origin.x = MAX(frame.origin.x, CGRectGetMinX(contentFrame));
    frame.origin.x = MIN(frame.origin.x, CGRectGetMaxX(contentFrame) - minSize.width);
    frame.origin.y = MAX(frame.origin.y, CGRectGetMinY(contentFrame));
    frame.origin.y = MIN(frame.origin.y, CGRectGetMaxY(contentFrame) - minSize.height);
    if (clampMinFromLeft && frame.size.width <= minSize.width + FLT_EPSILON) {
        frame.origin.x = CGRectGetMaxX(originFrame) - minSize.width;
    }
    if (clampMinFromTop && frame.size.height <= minSize.height + FLT_EPSILON) {
        frame.origin.y = CGRectGetMaxY(originFrame) - minSize.height;
    }
    self.cropBoxFrame = frame;
    [self checkForCanReset];
}
- (void)resetLayoutToDefaultAnimated:(BOOL)animated
{
    if (self.hasAspectRatio && self.resetAspectRatioEnabled) {
        _aspectRatio = CGSizeZero;
    }
    if (animated == NO || self.angle != 0) {
        _angle = 0;
        self.scrollView.zoomScale = 1.0f;
        CGRect imageRect = (CGRect){CGPointZero, self.image.size};
        self.backgroundImageView.transform = CGAffineTransformIdentity;
        self.backgroundContainerView.transform = CGAffineTransformIdentity;
        self.backgroundImageView.frame = imageRect;
        self.backgroundContainerView.frame = imageRect;
        self.foregroundImageView.transform = CGAffineTransformIdentity;
        self.foregroundImageView.frame = imageRect;
        [self layoutInitialImage];
        [self checkForCanReset];
        return;
    }
    if (self.resetTimer) {
        [self cancelResetTimer];
        [self setEditing:NO resetCropBox:NO animated:NO];
    }
    [self setSimpleRenderMode:YES animated:NO];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:0.5f delay:0.0f usingSpringWithDamping:1.0f initialSpringVelocity:1.0f options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            [self layoutInitialImage];
        } completion:^(BOOL complete) {
            [self setSimpleRenderMode:NO animated:YES];
        }];
    });
}
- (void)toggleTranslucencyViewVisible:(BOOL)visible
{
    if (self.dynamicBlurEffect == NO) {
        self.translucencyView.alpha = visible ? 1.0f : 0.0f;
    }
    else {
        [(UIVisualEffectView *)self.translucencyView setEffect:visible ? self.translucencyEffect : nil];
    }
}
- (void)updateToImageCropFrame:(CGRect)imageCropframe
{
    CGFloat minimumSize = self.scrollView.minimumZoomScale;
    CGPoint scaledOffset = (CGPoint){imageCropframe.origin.x * minimumSize, imageCropframe.origin.y * minimumSize};
    CGSize scaledCropSize = (CGSize){imageCropframe.size.width * minimumSize, imageCropframe.size.height * minimumSize};
    CGRect bounds = self.contentBounds;
    CGFloat scale = MIN(bounds.size.width / scaledCropSize.width, bounds.size.height / scaledCropSize.height);
    self.scrollView.zoomScale = self.scrollView.minimumZoomScale * scale;
    CGRect frame = CGRectZero;
    frame.size = (CGSize){scaledCropSize.width * scale, scaledCropSize.height * scale};
    CGRect cropBoxFrame = CGRectZero;
    cropBoxFrame.size = frame.size;
    cropBoxFrame.origin.x = CGRectGetMidX(bounds) - (frame.size.width * 0.5f);
    cropBoxFrame.origin.y = CGRectGetMidY(bounds) - (frame.size.height * 0.5f);
    self.cropBoxFrame = cropBoxFrame;
    frame.origin.x = (scaledOffset.x * scale) - self.scrollView.contentInset.left;
    frame.origin.y = (scaledOffset.y * scale) - self.scrollView.contentInset.top;
    self.scrollView.contentOffset = frame.origin;
}
#pragma mark - Gesture Recognizer -
- (void)gridPanGestureRecognized:(UIPanGestureRecognizer *)recognizer
{
    CGPoint point = [recognizer locationInView:self];
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        [self startEditing];
        self.panOriginPoint = point;
        self.cropOriginFrame = self.cropBoxFrame;
        self.tappedEdge = [self cropEdgeForPoint:self.panOriginPoint];
    }
    if (recognizer.state == UIGestureRecognizerStateEnded) {
        [self startResetTimer];
    }
    [self updateCropBoxFrameWithGesturePoint:point];
}
- (void)longPressGestureRecognized:(UILongPressGestureRecognizer *)recognizer
{
    if (recognizer.state == UIGestureRecognizerStateBegan)
        [self.gridOverlayView setGridHidden:NO animated:YES];
    if (recognizer.state == UIGestureRecognizerStateEnded)
        [self.gridOverlayView setGridHidden:YES animated:YES];
}
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    if (gestureRecognizer != self.gridPanGestureRecognizer)
        return YES;
    CGPoint tapPoint = [gestureRecognizer locationInView:self];
    CGRect frame = self.gridOverlayView.frame;
    CGRect innerFrame = CGRectInset(frame, 22.0f, 22.0f);
    CGRect outerFrame = CGRectInset(frame, -22.0f, -22.0f);
    if (CGRectContainsPoint(innerFrame, tapPoint) || !CGRectContainsPoint(outerFrame, tapPoint))
        return NO;
    return YES;
}
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    if (self.gridPanGestureRecognizer.state == UIGestureRecognizerStateChanged) {
        return NO;
    }
    return YES;
}
#pragma mark - Timer -
- (void)startResetTimer
{
    if (self.resetTimer)
        return;
    self.resetTimer = [NSTimer scheduledTimerWithTimeInterval:self.cropAdjustingDelay target:self selector:@selector(timerTriggered) userInfo:nil repeats:NO];
}
- (void)timerTriggered
{
    [self setEditing:NO resetCropBox:YES animated:YES];
    [self.resetTimer invalidate];
    self.resetTimer = nil;
}
- (void)cancelResetTimer
{
    [self.resetTimer invalidate];
    self.resetTimer = nil;
}
- (TOCropViewOverlayEdge)cropEdgeForPoint:(CGPoint)point
{
    CGRect frame = self.cropBoxFrame;
    frame = CGRectInset(frame, -32.0f, -32.0f);
    CGRect topLeftRect = (CGRect){frame.origin, {64,64}};
    if (CGRectContainsPoint(topLeftRect, point))
        return TOCropViewOverlayEdgeTopLeft;
    CGRect topRightRect = topLeftRect;
    topRightRect.origin.x = CGRectGetMaxX(frame) - 64.0f;
    if (CGRectContainsPoint(topRightRect, point))
        return TOCropViewOverlayEdgeTopRight;
    CGRect bottomLeftRect = topLeftRect;
    bottomLeftRect.origin.y = CGRectGetMaxY(frame) - 64.0f;
    if (CGRectContainsPoint(bottomLeftRect, point))
        return TOCropViewOverlayEdgeBottomLeft;
    CGRect bottomRightRect = topRightRect;
    bottomRightRect.origin.y = bottomLeftRect.origin.y;
    if (CGRectContainsPoint(bottomRightRect, point))
        return TOCropViewOverlayEdgeBottomRight;
    CGRect topRect = (CGRect){frame.origin, {CGRectGetWidth(frame), 64.0f}};
    if (CGRectContainsPoint(topRect, point))
        return TOCropViewOverlayEdgeTop;
    CGRect bottomRect = topRect;
    bottomRect.origin.y = CGRectGetMaxY(frame) - 64.0f;
    if (CGRectContainsPoint(bottomRect, point))
        return TOCropViewOverlayEdgeBottom;
    CGRect leftRect = (CGRect){frame.origin, {64.0f, CGRectGetHeight(frame)}};
    if (CGRectContainsPoint(leftRect, point))
        return TOCropViewOverlayEdgeLeft;
    CGRect rightRect = leftRect;
    rightRect.origin.x = CGRectGetMaxX(frame) - 64.0f;
    if (CGRectContainsPoint(rightRect, point))
        return TOCropViewOverlayEdgeRight;
    return TOCropViewOverlayEdgeNone;
}
#pragma mark - Scroll View Delegate -
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView { return self.backgroundContainerView; }
- (void)scrollViewDidScroll:(UIScrollView *)scrollView            { [self matchForegroundToBackground]; }
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self startEditing];
    self.canBeReset = YES;
}
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view
{
    [self startEditing];
    self.canBeReset = YES;
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    [self startResetTimer];
    [self checkForCanReset];
}
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(CGFloat)scale {
    [self startResetTimer];
    [self checkForCanReset];
}
- (void)scrollViewDidZoom:(UIScrollView *)scrollView
{
    if (scrollView.isTracking) {
        self.cropBoxLastEditedZoomScale = scrollView.zoomScale;
        self.cropBoxLastEditedMinZoomScale = scrollView.minimumZoomScale;
    }
    [self matchForegroundToBackground];
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    if (!decelerate)
        [self startResetTimer];
}
#pragma mark - Accessors -
- (void)setCropBoxResizeEnabled:(BOOL)panResizeEnabled {
    _cropBoxResizeEnabled = panResizeEnabled;
    self.gridPanGestureRecognizer.enabled = _cropBoxResizeEnabled;
}
- (void)setCropBoxFrame:(CGRect)cropBoxFrame
{
    if (CGRectEqualToRect(cropBoxFrame, _cropBoxFrame)) {
        return;
    }
    CGSize frameSize = cropBoxFrame.size;
    if (frameSize.width < FLT_EPSILON || frameSize.height < FLT_EPSILON) { return; }
    if (isnan(frameSize.width) || isnan(frameSize.height)) { return; }
    CGRect contentFrame = self.contentBounds;
    CGFloat xOrigin = ceilf(contentFrame.origin.x);
    CGFloat xDelta = cropBoxFrame.origin.x - xOrigin;
    cropBoxFrame.origin.x = floorf(MAX(cropBoxFrame.origin.x, xOrigin));
    if (xDelta < -FLT_EPSILON) 
        cropBoxFrame.size.width += xDelta;
    CGFloat yOrigin = ceilf(contentFrame.origin.y);
    CGFloat yDelta = cropBoxFrame.origin.y - yOrigin;
    cropBoxFrame.origin.y = floorf(MAX(cropBoxFrame.origin.y, yOrigin));
    if (yDelta < -FLT_EPSILON)
        cropBoxFrame.size.height += yDelta;
    CGFloat maxWidth = (contentFrame.size.width + contentFrame.origin.x) - cropBoxFrame.origin.x;
    cropBoxFrame.size.width = floorf(MIN(cropBoxFrame.size.width, maxWidth));
    CGFloat maxHeight = (contentFrame.size.height + contentFrame.origin.y) - cropBoxFrame.origin.y;
    cropBoxFrame.size.height = floorf(MIN(cropBoxFrame.size.height, maxHeight));
    cropBoxFrame.size.width  = MAX(cropBoxFrame.size.width, kTOCropViewMinimumBoxSize);
    cropBoxFrame.size.height = MAX(cropBoxFrame.size.height, kTOCropViewMinimumBoxSize);
    _cropBoxFrame = cropBoxFrame;
    self.foregroundContainerView.frame = _cropBoxFrame; 
    self.gridOverlayView.frame = _cropBoxFrame; 
    if (self.circularMaskLayer) {
        CGFloat scale = _cropBoxFrame.size.width / kTOCropViewCircularPathRadius;
        self.circularMaskLayer.transform = CATransform3DScale(CATransform3DIdentity, scale, scale, 1.0f);
    }
    self.scrollView.contentInset = (UIEdgeInsets){CGRectGetMinY(_cropBoxFrame),
                                                    CGRectGetMinX(_cropBoxFrame),
                                                    CGRectGetMaxY(self.bounds) - CGRectGetMaxY(_cropBoxFrame),
                                                    CGRectGetMaxX(self.bounds) - CGRectGetMaxX(_cropBoxFrame)};
    CGSize imageSize = self.backgroundContainerView.bounds.size;
    CGFloat scale = MAX(cropBoxFrame.size.height/imageSize.height, cropBoxFrame.size.width/imageSize.width);
    self.scrollView.minimumZoomScale = scale;
    CGSize size = self.scrollView.contentSize;
    size.width = floorf(size.width);
    size.height = floorf(size.height);
    self.scrollView.contentSize = size;
    self.scrollView.zoomScale = self.scrollView.zoomScale;
    [self matchForegroundToBackground]; 
}
- (void)setEditing:(BOOL)editing
{
    [self setEditing:editing resetCropBox:NO animated:NO];
}
- (void)setSimpleRenderMode:(BOOL)simpleMode
{
    [self setSimpleRenderMode:simpleMode animated:NO];
}
- (BOOL)cropBoxAspectRatioIsPortrait
{
    CGRect cropFrame = self.cropBoxFrame;
    return CGRectGetWidth(cropFrame) < CGRectGetHeight(cropFrame);
}
- (CGRect)imageCropFrame
{
    CGSize imageSize = self.imageSize;
    CGSize contentSize = self.scrollView.contentSize;
    CGRect cropBoxFrame = self.cropBoxFrame;
    CGPoint contentOffset = self.scrollView.contentOffset;
    UIEdgeInsets edgeInsets = self.scrollView.contentInset;
    CGFloat scale = MIN(imageSize.width / contentSize.width, imageSize.height / contentSize.height);
    CGRect frame = CGRectZero;
    frame.origin.x = floorf((floorf(contentOffset.x) + edgeInsets.left) * (imageSize.width / contentSize.width));
    frame.origin.x = MAX(0, frame.origin.x);
    frame.origin.y = floorf((floorf(contentOffset.y) + edgeInsets.top) * (imageSize.height / contentSize.height));
    frame.origin.y = MAX(0, frame.origin.y);
    frame.size.width = ceilf(cropBoxFrame.size.width * scale);
    frame.size.width = MIN(imageSize.width, frame.size.width);
    if (floor(cropBoxFrame.size.width) == floor(cropBoxFrame.size.height)) {
        frame.size.height = frame.size.width;
    } else {
        frame.size.height = ceilf(cropBoxFrame.size.height * scale);
        frame.size.height = MIN(imageSize.height, frame.size.height);
    }
    frame.size.height = MIN(imageSize.height, frame.size.height);
    return frame;
}
- (void)setImageCropFrame:(CGRect)imageCropFrame
{
    if (!self.initialSetupPerformed) {
        self.restoreImageCropFrame = imageCropFrame;
        return;
    }
    [self updateToImageCropFrame:imageCropFrame];
}
- (void)setCroppingViewsHidden:(BOOL)hidden
{
    [self setCroppingViewsHidden:hidden animated:NO];
}
- (void)setCroppingViewsHidden:(BOOL)hidden animated:(BOOL)animated
{
    if (_croppingViewsHidden == hidden)
        return;
    _croppingViewsHidden = hidden;
    CGFloat alpha = hidden ? 0.0f : 1.0f;
    if (animated == NO) {
        self.backgroundImageView.alpha = alpha;
        self.foregroundContainerView.alpha = alpha;
        self.gridOverlayView.alpha = alpha;
        [self toggleTranslucencyViewVisible:!hidden];
        return;
    }
    self.foregroundContainerView.alpha = alpha;
    self.backgroundImageView.alpha = alpha;
    [UIView animateWithDuration:0.4f animations:^{
        [self toggleTranslucencyViewVisible:!hidden];
        self.gridOverlayView.alpha = alpha;
    }];
}
- (void)setBackgroundImageViewHidden:(BOOL)hidden animated:(BOOL)animated
{
    if (animated == NO) {
        self.backgroundImageView.hidden = hidden;
        return;
    }
    CGFloat beforeAlpha = hidden ? 1.0f : 0.0f;
    CGFloat toAlpha = hidden ? 0.0f : 1.0f;
    self.backgroundImageView.hidden = NO;
    self.backgroundImageView.alpha = beforeAlpha;
    [UIView animateWithDuration:0.5f animations:^{
        self.backgroundImageView.alpha = toAlpha;
    }completion:^(BOOL complete) {
        if (hidden) {
            self.backgroundImageView.hidden = YES;
        }
    }];
}
- (void)setGridOverlayHidden:(BOOL)gridOverlayHidden
{
    [self setGridOverlayHidden:_gridOverlayHidden animated:NO];
}
- (void)setGridOverlayHidden:(BOOL)gridOverlayHidden animated:(BOOL)animated
{
    _gridOverlayHidden = gridOverlayHidden;
    self.gridOverlayView.alpha = gridOverlayHidden ? 1.0f : 0.0f;
    [UIView animateWithDuration:0.4f animations:^{
        self.gridOverlayView.alpha = gridOverlayHidden ? 0.0f : 1.0f;
    }];
}
- (CGRect)imageViewFrame
{
    CGRect frame = CGRectZero;
    frame.origin.x = -self.scrollView.contentOffset.x;
    frame.origin.y = -self.scrollView.contentOffset.y;
    frame.size = self.scrollView.contentSize;
    return frame;
}
- (void)setCanBeReset:(BOOL)canReset
{
    if (canReset == _canBeReset) {
        return;
    }
    _canBeReset = canReset;
    if (canReset) {
        if ([self.delegate respondsToSelector:@selector(cropViewDidBecomeResettable:)])
            [self.delegate cropViewDidBecomeResettable:self];
    }
    else  {
        if ([self.delegate respondsToSelector:@selector(cropViewDidBecomeNonResettable:)])
            [self.delegate cropViewDidBecomeNonResettable:self];
    }
}
- (void)setAngle:(NSInteger)angle
{
    NSInteger newAngle = angle;
    if (angle % 90 != 0) {
        newAngle = 0;
    }
    if (!self.initialSetupPerformed) {
        self.restoreAngle = newAngle;
        return;
    }
    if (newAngle >= 0) {
        while (labs(self.angle) != labs(newAngle)) {
            [self rotateImageNinetyDegreesAnimated:NO clockwise:YES];
        }
    }
    else {
        while (-labs(self.angle) != -labs(newAngle)) {
            [self rotateImageNinetyDegreesAnimated:NO clockwise:NO];
        }
    }
}
#pragma mark - Editing Mode -
- (void)startEditing
{
    [self cancelResetTimer];
    [self setEditing:YES resetCropBox:NO animated:YES];
}
- (void)setEditing:(BOOL)editing resetCropBox:(BOOL)resetCropbox animated:(BOOL)animated
{
    if (editing == _editing)
        return;
    _editing = editing;
    [self.gridOverlayView setGridHidden:!editing animated:animated];
    if (resetCropbox) {
        [self moveCroppedContentToCenterAnimated:animated];
        [self captureStateForImageRotation];
        self.cropBoxLastEditedAngle = self.angle;
    }
    if (animated == NO) {
        [self toggleTranslucencyViewVisible:!editing];
        return;
    }
    CGFloat duration = editing ? 0.05f : 0.35f;
    CGFloat delay = editing? 0.0f : 0.35f;
    if (self.croppingStyle == TOCropViewCroppingStyleCircular) {
        delay = 0.0f;
    }
    [UIView animateKeyframesWithDuration:duration delay:delay options:0 animations:^{
        [self toggleTranslucencyViewVisible:!editing];
    } completion:nil];
}
- (void)moveCroppedContentToCenterAnimated:(BOOL)animated
{
    if (self.internalLayoutDisabled)
        return;
    CGRect contentRect = self.contentBounds;
    CGRect cropFrame = self.cropBoxFrame;
    if (cropFrame.size.width < FLT_EPSILON || cropFrame.size.height < FLT_EPSILON) {
        return;
    }
    CGFloat scale = MIN(CGRectGetWidth(contentRect)/CGRectGetWidth(cropFrame), CGRectGetHeight(contentRect)/CGRectGetHeight(cropFrame));
    CGPoint focusPoint = (CGPoint){CGRectGetMidX(cropFrame), CGRectGetMidY(cropFrame)};
    CGPoint midPoint = (CGPoint){CGRectGetMidX(contentRect), CGRectGetMidY(contentRect)};
    cropFrame.size.width = ceilf(cropFrame.size.width * scale);
    cropFrame.size.height = ceilf(cropFrame.size.height * scale);
    cropFrame.origin.x = contentRect.origin.x + ceilf((contentRect.size.width - cropFrame.size.width) * 0.5f);
    cropFrame.origin.y = contentRect.origin.y + ceilf((contentRect.size.height - cropFrame.size.height) * 0.5f);
    CGPoint contentTargetPoint = CGPointZero;
    contentTargetPoint.x = ((focusPoint.x + self.scrollView.contentOffset.x) * scale);
    contentTargetPoint.y = ((focusPoint.y + self.scrollView.contentOffset.y) * scale);
    __block CGPoint offset = CGPointZero;
    offset.x = -midPoint.x + contentTargetPoint.x;
    offset.y = -midPoint.y + contentTargetPoint.y;
    offset.x = MAX(-cropFrame.origin.x, offset.x);
    offset.y = MAX(-cropFrame.origin.y, offset.y);
    __weak typeof(self) weakSelf = self;
    void (^translateBlock)(void) = ^{
        typeof(self) strongSelf = weakSelf;
        strongSelf.disableForgroundMatching = YES;
        {
            if (scale < 1.0f - FLT_EPSILON || scale > 1.0f + FLT_EPSILON) {
                strongSelf.scrollView.zoomScale *= scale;
                strongSelf.scrollView.zoomScale = MIN(strongSelf.scrollView.maximumZoomScale, strongSelf.scrollView.zoomScale);
            }
            if (strongSelf.scrollView.zoomScale < strongSelf.scrollView.maximumZoomScale - FLT_EPSILON) {
                offset.x = MIN(-CGRectGetMaxX(cropFrame)+strongSelf.scrollView.contentSize.width, offset.x);
                offset.y = MIN(-CGRectGetMaxY(cropFrame)+strongSelf.scrollView.contentSize.height, offset.y);
                strongSelf.scrollView.contentOffset = offset;
            }
            strongSelf.cropBoxFrame = cropFrame;
        }
        strongSelf.disableForgroundMatching = NO;
        [strongSelf matchForegroundToBackground];
    };
    if (!animated) {
        translateBlock();
        return;
    }
    [self matchForegroundToBackground];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:0.5f
                              delay:0.0f
             usingSpringWithDamping:1.0f
              initialSpringVelocity:1.0f
                            options:UIViewAnimationOptionBeginFromCurrentState
                         animations:translateBlock
                         completion:nil];
    });
}
- (void)setSimpleRenderMode:(BOOL)simpleMode animated:(BOOL)animated
{
    if (simpleMode == _simpleRenderMode)
        return;
    _simpleRenderMode = simpleMode;
    self.editing = NO;
    if (animated == NO) {
        [self toggleTranslucencyViewVisible:!simpleMode];
        return;
    }
    [UIView animateWithDuration:0.25f animations:^{
        [self toggleTranslucencyViewVisible:!simpleMode];
    }];
}
- (void)setAspectRatio:(CGSize)aspectRatio
{
    [self setAspectRatio:aspectRatio animated:NO];
}
- (void)setAspectRatio:(CGSize)aspectRatio animated:(BOOL)animated
{
    _aspectRatio = aspectRatio;
    if (!self.initialSetupPerformed) {
        return;
    }
    if (aspectRatio.width < FLT_EPSILON && aspectRatio.height < FLT_EPSILON) {
        aspectRatio = (CGSize){self.imageSize.width, self.imageSize.height};
    }
    CGRect boundsFrame = self.contentBounds;
    CGRect cropBoxFrame = self.cropBoxFrame;
    CGPoint offset = self.scrollView.contentOffset;
    BOOL cropBoxIsPortrait = NO;
    if ((NSInteger)aspectRatio.width == 1 && (NSInteger)aspectRatio.height == 1)
        cropBoxIsPortrait = self.image.size.width > self.image.size.height;
    else
        cropBoxIsPortrait = aspectRatio.width < aspectRatio.height;
    BOOL zoomOut = NO;
    if (cropBoxIsPortrait) {
        CGFloat newWidth = floorf(cropBoxFrame.size.height * (aspectRatio.width/aspectRatio.height));
        CGFloat delta = cropBoxFrame.size.width - newWidth;
        cropBoxFrame.size.width = newWidth;
        offset.x += (delta * 0.5f);
        if (delta < FLT_EPSILON)
            cropBoxFrame.origin.x = self.contentBounds.origin.x; 
        CGFloat boundsWidth = CGRectGetWidth(boundsFrame);
        if (newWidth > boundsWidth) {
            CGFloat scale = boundsWidth / newWidth;
            cropBoxFrame.size.height *= scale;
            cropBoxFrame.size.width = boundsWidth;
            zoomOut = YES;
        }
    }
    else {
        CGFloat newHeight = floorf(cropBoxFrame.size.width * (aspectRatio.height/aspectRatio.width));
        CGFloat delta = cropBoxFrame.size.height - newHeight;
        cropBoxFrame.size.height = newHeight;
        offset.y += (delta * 0.5f);
        if (delta < FLT_EPSILON)
            cropBoxFrame.origin.x = self.contentBounds.origin.y;
        CGFloat boundsHeight = CGRectGetHeight(boundsFrame);
        if (newHeight > boundsHeight) {
            CGFloat scale = boundsHeight / newHeight;
            cropBoxFrame.size.width *= scale;
            cropBoxFrame.size.height = boundsHeight;
            zoomOut = YES;
        }
    }
    self.cropBoxLastEditedSize = cropBoxFrame.size;
    self.cropBoxLastEditedAngle = self.angle;
    void (^translateBlock)(void) = ^{
        self.scrollView.contentOffset = offset;
        self.cropBoxFrame = cropBoxFrame;
        if (zoomOut)
            self.scrollView.zoomScale = self.scrollView.minimumZoomScale;
        [self moveCroppedContentToCenterAnimated:NO];
        [self checkForCanReset];
    };
    if (animated == NO) {
        translateBlock();
        return;
    }
    [UIView animateWithDuration:0.5f
                          delay:0.0
         usingSpringWithDamping:1.0f
          initialSpringVelocity:0.7f
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:translateBlock
                     completion:nil];
}
- (void)rotateImageNinetyDegreesAnimated:(BOOL)animated
{
    [self rotateImageNinetyDegreesAnimated:animated clockwise:NO];
}
- (void)rotateImageNinetyDegreesAnimated:(BOOL)animated clockwise:(BOOL)clockwise
{
    if (self.rotateAnimationInProgress)
        return;
    if (self.resetTimer) {
        [self cancelResetTimer];
        [self setEditing:NO resetCropBox:YES animated:NO];
        self.cropBoxLastEditedAngle = self.angle;
        [self captureStateForImageRotation];
    }
    NSInteger newAngle = self.angle;
    newAngle = clockwise ? newAngle + 90 : newAngle - 90;
    if (newAngle <= -360 || newAngle >= 360) {
        newAngle = 0;
    }
    _angle = newAngle;
    CGFloat angleInRadians = 0.0f;
    switch (newAngle) {
        case 90:    angleInRadians = M_PI_2;            break;
        case -90:   angleInRadians = -M_PI_2;           break;
        case 180:   angleInRadians = M_PI;              break;
        case -180:  angleInRadians = -M_PI;             break;
        case 270:   angleInRadians = (M_PI + M_PI_2);   break;
        case -270:  angleInRadians = -(M_PI + M_PI_2);  break;
        default:                                        break;
    }
    CGAffineTransform rotation = CGAffineTransformRotate(CGAffineTransformIdentity, angleInRadians);
    CGRect contentBounds = self.contentBounds;
    CGRect cropBoxFrame = self.cropBoxFrame;
    CGFloat scale = MIN(contentBounds.size.width / cropBoxFrame.size.height, contentBounds.size.height / cropBoxFrame.size.width);
    CGPoint cropMidPoint = (CGPoint){CGRectGetMidX(cropBoxFrame), CGRectGetMidY(cropBoxFrame)};
    CGPoint cropTargetPoint = (CGPoint){cropMidPoint.x + self.scrollView.contentOffset.x, cropMidPoint.y + self.scrollView.contentOffset.y};
    CGRect newCropFrame = CGRectZero;
    if (labs(self.angle) == labs(self.cropBoxLastEditedAngle) || (labs(self.angle)*-1) == ((labs(self.cropBoxLastEditedAngle) - 180) % 360)) {
        newCropFrame.size = self.cropBoxLastEditedSize;
        self.scrollView.minimumZoomScale = self.cropBoxLastEditedMinZoomScale;
        self.scrollView.zoomScale = self.cropBoxLastEditedZoomScale;
    }
    else {
        newCropFrame.size = (CGSize){floorf(self.cropBoxFrame.size.height * scale), floorf(self.cropBoxFrame.size.width * scale)};
        self.scrollView.minimumZoomScale *= scale;
        self.scrollView.zoomScale *= scale;
    }
    newCropFrame.origin.x = floorf(CGRectGetMidX(contentBounds) - (newCropFrame.size.width * 0.5f));
    newCropFrame.origin.y = floorf(CGRectGetMidY(contentBounds) - (newCropFrame.size.height * 0.5f));
    UIView *snapshotView = nil;
    if (animated) {
        snapshotView = [self.foregroundContainerView snapshotViewAfterScreenUpdates:NO];
        self.rotateAnimationInProgress = YES;
    }
    self.backgroundImageView.transform = rotation;
    CGSize containerSize = self.backgroundContainerView.frame.size;
    self.backgroundContainerView.frame = (CGRect){CGPointZero, {containerSize.height, containerSize.width}};
    self.backgroundImageView.frame = (CGRect){CGPointZero, self.backgroundImageView.frame.size};
    self.foregroundContainerView.transform = CGAffineTransformIdentity;
    self.foregroundImageView.transform = rotation;
    self.scrollView.contentSize = self.backgroundContainerView.frame.size;
    self.cropBoxFrame = newCropFrame;
    [self moveCroppedContentToCenterAnimated:NO];
    newCropFrame = self.cropBoxFrame;
    cropTargetPoint.x *= scale;
    cropTargetPoint.y *= scale;
    CGFloat swap = cropTargetPoint.x;
    if (clockwise) {
        cropTargetPoint.x = self.scrollView.contentSize.width - cropTargetPoint.y;
        cropTargetPoint.y = swap;
    } else {
        cropTargetPoint.x = cropTargetPoint.y;
        cropTargetPoint.y = self.scrollView.contentSize.height - swap;
    }
    CGPoint midPoint = {CGRectGetMidX(newCropFrame), CGRectGetMidY(newCropFrame)};
    CGPoint offset = CGPointZero;
    offset.x = floorf(-midPoint.x + cropTargetPoint.x);
    offset.y = floorf(-midPoint.y + cropTargetPoint.y);
    offset.x = MAX(-self.scrollView.contentInset.left, offset.x);
    offset.y = MAX(-self.scrollView.contentInset.top, offset.y);
    offset.x = MIN(self.scrollView.contentSize.width - (newCropFrame.size.width - self.scrollView.contentInset.right), offset.x);
    offset.y = MIN(self.scrollView.contentSize.height - (newCropFrame.size.height - self.scrollView.contentInset.bottom), offset.y);
    if (offset.x == self.scrollView.contentOffset.x && offset.y == self.scrollView.contentOffset.y && scale == 1) {
        [self matchForegroundToBackground];
    }
    self.scrollView.contentOffset = offset;
    if (animated) {
        snapshotView.center = (CGPoint){CGRectGetMidX(contentBounds), CGRectGetMidY(contentBounds)};
        [self addSubview:snapshotView];
        self.backgroundContainerView.hidden = YES;
        self.foregroundContainerView.hidden = YES;
        self.translucencyView.hidden = YES;
        self.gridOverlayView.hidden = YES;
        [UIView animateWithDuration:0.45f delay:0.0f usingSpringWithDamping:1.0f initialSpringVelocity:0.8f options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            CGAffineTransform transform = CGAffineTransformRotate(CGAffineTransformIdentity, clockwise ? M_PI_2 : -M_PI_2);
            transform = CGAffineTransformScale(transform, scale, scale);
            snapshotView.transform = transform;
        } completion:^(BOOL complete) {
            self.backgroundContainerView.hidden = NO;
            self.foregroundContainerView.hidden = NO;
            self.translucencyView.hidden = NO;
            self.gridOverlayView.hidden = NO;
            self.backgroundContainerView.alpha = 0.0f;
            self.gridOverlayView.alpha = 0.0f;
            self.translucencyView.alpha = 1.0f;
            [UIView animateWithDuration:0.45f animations:^{
                snapshotView.alpha = 0.0f;
                self.backgroundContainerView.alpha = 1.0f;
                self.gridOverlayView.alpha = 1.0f;
            } completion:^(BOOL complete) {
                self.rotateAnimationInProgress = NO;
                [snapshotView removeFromSuperview];
                BOOL aspectRatioCanSwapDimensions = !self.aspectRatioLockEnabled ||
                (self.aspectRatioLockEnabled && self.aspectRatioLockDimensionSwapEnabled);
                if (!aspectRatioCanSwapDimensions) {
                    [self setAspectRatio:self.aspectRatio animated:animated];
                }
            }];
        }];
    }
    [self checkForCanReset];
}
- (void)captureStateForImageRotation
{
    self.cropBoxLastEditedSize = self.cropBoxFrame.size;
    self.cropBoxLastEditedZoomScale = self.scrollView.zoomScale;
    self.cropBoxLastEditedMinZoomScale = self.scrollView.minimumZoomScale;
}
#pragma mark - Resettable State -
- (void)checkForCanReset
{
    BOOL canReset = NO;
    if (self.angle != 0) { 
        canReset = YES;
    }
    else if (self.scrollView.zoomScale > self.scrollView.minimumZoomScale + FLT_EPSILON) { 
        canReset = YES;
    }
    else if ((NSInteger)floorf(self.cropBoxFrame.size.width) != (NSInteger)floorf(self.originalCropBoxSize.width) ||
             (NSInteger)floorf(self.cropBoxFrame.size.height) != (NSInteger)floorf(self.originalCropBoxSize.height))
    { 
        canReset = YES;
    }
    else if ((NSInteger)floorf(self.scrollView.contentOffset.x) != (NSInteger)floorf(self.originalContentOffset.x) ||
             (NSInteger)floorf(self.scrollView.contentOffset.y) != (NSInteger)floorf(self.originalContentOffset.y))
    {
        canReset = YES;
    }
    self.canBeReset = canReset;
}
#pragma mark - Convienience Methods -
- (CGRect)contentBounds
{
    CGRect contentRect = CGRectZero;
    contentRect.origin.x = self.cropViewPadding + self.cropRegionInsets.left;
    contentRect.origin.y = self.cropViewPadding + self.cropRegionInsets.top;
    contentRect.size.width = CGRectGetWidth(self.bounds) - ((self.cropViewPadding * 2) + self.cropRegionInsets.left + self.cropRegionInsets.right);
    contentRect.size.height = CGRectGetHeight(self.bounds) - ((self.cropViewPadding * 2) + self.cropRegionInsets.top + self.cropRegionInsets.bottom);
    return contentRect;
}
- (CGSize)imageSize
{
    if (self.angle == -90 || self.angle == -270 || self.angle == 90 || self.angle == 270)
        return (CGSize){self.image.size.height, self.image.size.width};
    return (CGSize){self.image.size.width, self.image.size.height};
}
- (BOOL)hasAspectRatio
{
    return (self.aspectRatio.width > FLT_EPSILON && self.aspectRatio.height > FLT_EPSILON);
}
@end
