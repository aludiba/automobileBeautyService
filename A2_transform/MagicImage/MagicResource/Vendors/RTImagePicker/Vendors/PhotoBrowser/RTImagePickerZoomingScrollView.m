#import "RTImagePickerZoomingScrollView.h"
#import "RTImagePickerUtils.h"
#import "RTImagePickerPhotoBrowser.h"
#import "RTImagePickerPhoto.h"
#import "RTImagePickerPhotoBrowserPrivate.h"
#import "UIImage+RTImagePickerPhotoBrowser.h"
@interface RTImagePickerZoomingScrollView () {
    RTImagePickerPhotoBrowser __weak *_photoBrowser;
    RTImagePickerTapDetectingView *_tapView; 
    RTImagePickerTapDetectingImageView *_photoImageView;
    UIImageView *_loadingError;
}
@end
@implementation RTImagePickerZoomingScrollView
- (id)initWithPhotoBrowser:(RTImagePickerPhotoBrowser *)browser {
    if ((self = [super init])) {
        _index = NSUIntegerMax;
        _photoBrowser = browser;
        _tapView = [[RTImagePickerTapDetectingView alloc] initWithFrame:self.bounds];
        _tapView.tapDelegate = self;
        _tapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _tapView.backgroundColor = [UIColor blackColor];
        [self addSubview:_tapView];
        _photoImageView = [[RTImagePickerTapDetectingImageView alloc] initWithFrame:CGRectZero];
        _photoImageView.tapDelegate = self;
        _photoImageView.contentMode = UIViewContentModeCenter;
        _photoImageView.backgroundColor = [UIColor blackColor];
        [self addSubview:_photoImageView];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(setProgressFromNotification:)
                                                     name:RTImagePickerPhoto_PROGRESS_NOTIFICATION
                                                   object:nil];
        self.backgroundColor = [UIColor blackColor];
        self.delegate = self;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        self.decelerationRate = UIScrollViewDecelerationRateFast;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }
    return self;
}
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)prepareForReuse {
    [self hideImageFailure];
    self.photo = nil;
    self.selectedButton = nil;
    self.playButton = nil;
    _photoImageView.hidden = NO;
    _photoImageView.image = nil;
    _index = NSUIntegerMax;
}
- (BOOL)displayingVideo {
    return [_photo respondsToSelector:@selector(isVideo)] && _photo.isVideo;
}
- (void)setImageHidden:(BOOL)hidden {
    _photoImageView.hidden = hidden;
}
#pragma mark - Image
- (void)setPhoto:(id<RTImagePickerPhoto>)photo {
    if (_photo && photo == nil) {
        if ([_photo respondsToSelector:@selector(cancelAnyLoading)]) {
            [_photo cancelAnyLoading];
        }
    }
    _photo = photo;
    UIImage *img = [_photoBrowser imageForPhoto:_photo];
    if (img) {
        [self displayImage];
    } else {
        [self showLoadingIndicator];
    }
}
- (void)displayImage {
    if (_photo && _photoImageView.image == nil) {
        self.maximumZoomScale = 1;
        self.minimumZoomScale = 1;
        self.zoomScale = 1;
        self.contentSize = CGSizeMake(0, 0);
        UIImage *img = [_photoBrowser imageForPhoto:_photo];
        if (img) {
            _photoImageView.image = img;
            _photoImageView.hidden = NO;
            CGRect photoImageViewFrame;
            photoImageViewFrame.origin = CGPointZero;
            photoImageViewFrame.size = img.size;
            _photoImageView.frame = photoImageViewFrame;
            self.contentSize = photoImageViewFrame.size;
            [self setMaxMinZoomScalesForCurrentBounds];
        } else  {
            [self displayImageFailure];
        }
        [self setNeedsLayout];
    }
}
- (void)displayImageFailure {
    _photoImageView.image = nil;
    if (![_photo respondsToSelector:@selector(emptyImage)] || !_photo.emptyImage) {
        if (!_loadingError) {
            _loadingError = [UIImageView new];
            _loadingError.image = [UIImage imageForResourcePath:@"MWPhotoBrowser.bundle/ImageError" ofType:@"png" inBundle:[NSBundle bundleForClass:[self class]]];
            _loadingError.userInteractionEnabled = NO;
            _loadingError.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin |
            UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleRightMargin;
            [_loadingError sizeToFit];
            [self addSubview:_loadingError];
        }
        _loadingError.frame = CGRectMake(floorf((self.bounds.size.width - _loadingError.frame.size.width) / 2.),
                                         floorf((self.bounds.size.height - _loadingError.frame.size.height) / 2),
                                         _loadingError.frame.size.width,
                                         _loadingError.frame.size.height);
    }
}
- (void)hideImageFailure {
    if (_loadingError) {
        [_loadingError removeFromSuperview];
        _loadingError = nil;
    }
}
#pragma mark - Loading Progress
- (void)setProgressFromNotification:(NSNotification *)notification {
}
- (void)showLoadingIndicator {
    self.zoomScale = 0;
    self.minimumZoomScale = 0;
    self.maximumZoomScale = 0;
    [self hideImageFailure];
}
#pragma mark - Setup
- (CGFloat)initialZoomScaleWithMinScale {
    CGFloat zoomScale = self.minimumZoomScale;
    if (_photoImageView && _photoBrowser.zoomPhotosToFill) {
        CGSize boundsSize = self.bounds.size;
        CGSize imageSize = _photoImageView.image.size;
        CGFloat boundsAR = boundsSize.width / boundsSize.height;
        CGFloat imageAR = imageSize.width / imageSize.height;
        CGFloat xScale = boundsSize.width / imageSize.width;    
        CGFloat yScale = boundsSize.height / imageSize.height;  
        if (ABS(boundsAR - imageAR) < 0.17) {
            zoomScale = MAX(xScale, yScale);
            zoomScale = MIN(MAX(self.minimumZoomScale, zoomScale), self.maximumZoomScale);
        }
    }
    return zoomScale;
}
- (void)setMaxMinZoomScalesForCurrentBounds {
    self.maximumZoomScale = 1;
    self.minimumZoomScale = 1;
    self.zoomScale = 1;
    if (_photoImageView.image == nil) return;
    _photoImageView.frame = CGRectMake(0, 0, _photoImageView.frame.size.width, _photoImageView.frame.size.height);
    CGSize boundsSize = self.bounds.size;
    CGSize imageSize = _photoImageView.image.size;
    CGFloat xScale = boundsSize.width / imageSize.width;    
    CGFloat yScale = boundsSize.height / imageSize.height;  
    CGFloat minScale = MIN(xScale, yScale);                 
    CGFloat maxScale = 3;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        maxScale = 4;
    }
    if (xScale >= 1 && yScale >= 1) {
        minScale = 1.0;
    }
    self.maximumZoomScale = maxScale;
    self.minimumZoomScale = minScale;
    self.zoomScale = [self initialZoomScaleWithMinScale];
    if (self.zoomScale != minScale) {
        self.contentOffset = CGPointMake((imageSize.width * self.zoomScale - boundsSize.width) / 2.0,
                                         (imageSize.height * self.zoomScale - boundsSize.height) / 2.0);
    }
    self.scrollEnabled = NO;
    if ([self displayingVideo]) {
        self.maximumZoomScale = self.zoomScale;
        self.minimumZoomScale = self.zoomScale;
    }
    [self setNeedsLayout];
}
#pragma mark - Layout
- (void)layoutSubviews {
    _tapView.frame = self.bounds;
    if (_loadingError)
        _loadingError.frame = CGRectMake(floorf((self.bounds.size.width - _loadingError.frame.size.width) / 2.),
                                         floorf((self.bounds.size.height - _loadingError.frame.size.height) / 2),
                                         _loadingError.frame.size.width,
                                         _loadingError.frame.size.height);
    [super layoutSubviews];
    CGSize boundsSize = self.bounds.size;
    CGRect frameToCenter = _photoImageView.frame;
    if (frameToCenter.size.width < boundsSize.width) {
        frameToCenter.origin.x = floorf((boundsSize.width - frameToCenter.size.width) / 2.0);
    } else {
        frameToCenter.origin.x = 0;
    }
    if (frameToCenter.size.height < boundsSize.height) {
        frameToCenter.origin.y = floorf((boundsSize.height - frameToCenter.size.height) / 2.0);
    } else {
        frameToCenter.origin.y = 0;
    }
    if (!CGRectEqualToRect(_photoImageView.frame, frameToCenter))
        _photoImageView.frame = frameToCenter;
}
#pragma mark - UIScrollViewDelegate
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return _photoImageView;
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [_photoBrowser cancelControlHiding];
}
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view {
    self.scrollEnabled = YES; 
    [_photoBrowser cancelControlHiding];
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    [_photoBrowser hideControlsAfterDelay];
}
- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    [self setNeedsLayout];
    [self layoutIfNeeded];
}
#pragma mark - Tap Detection
- (void)handleSingleTap:(CGPoint)touchPoint {
    [_photoBrowser performSelector:@selector(toggleControls) withObject:nil afterDelay:0.2];
}
- (void)handleDoubleTap:(CGPoint)touchPoint {
    if ([self displayingVideo]) {
        return;
    }
    [NSObject cancelPreviousPerformRequestsWithTarget:_photoBrowser];
    if (self.zoomScale != self.minimumZoomScale && self.zoomScale != [self initialZoomScaleWithMinScale]) {
        [self setZoomScale:self.minimumZoomScale animated:YES];
    } else {
        CGFloat newZoomScale = ((self.maximumZoomScale + self.minimumZoomScale) / 2);
        CGFloat xsize = self.bounds.size.width / newZoomScale;
        CGFloat ysize = self.bounds.size.height / newZoomScale;
        [self zoomToRect:CGRectMake(touchPoint.x - xsize/2, touchPoint.y - ysize/2, xsize, ysize) animated:YES];
    }
    [_photoBrowser hideControlsAfterDelay];
}
- (void)imageView:(UIImageView *)imageView singleTapDetected:(UITouch *)touch {
    [self handleSingleTap:[touch locationInView:imageView]];
}
- (void)imageView:(UIImageView *)imageView doubleTapDetected:(UITouch *)touch {
    [self handleDoubleTap:[touch locationInView:imageView]];
}
- (void)view:(UIView *)view singleTapDetected:(UITouch *)touch {
    CGFloat touchX = [touch locationInView:view].x;
    CGFloat touchY = [touch locationInView:view].y;
    touchX *= 1/self.zoomScale;
    touchY *= 1/self.zoomScale;
    touchX += self.contentOffset.x;
    touchY += self.contentOffset.y;
    [self handleSingleTap:CGPointMake(touchX, touchY)];
}
- (void)view:(UIView *)view doubleTapDetected:(UITouch *)touch {
    CGFloat touchX = [touch locationInView:view].x;
    CGFloat touchY = [touch locationInView:view].y;
    touchX *= 1/self.zoomScale;
    touchY *= 1/self.zoomScale;
    touchX += self.contentOffset.x;
    touchY += self.contentOffset.y;
    [self handleDoubleTap:CGPointMake(touchX, touchY)];
}
@end
