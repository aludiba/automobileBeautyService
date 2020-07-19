#import <UIKit/UIKit.h>
#import "RTImagePickerPhotoProtocol.h"
#import "RTImagePickerTapDetectingImageView.h"
#import "RTImagePickerTapDetectingView.h"
#import "RTImagePickerZoomingScrollView.h"
#import "RTImagePickerUtils.h"
#import "RTImagePickerPhotoBrowser.h"
#import "RTImagePickerPhoto.h"
#import "RTImagePickerPhotoBrowserPrivate.h"
#import "UIImage+RTImagePickerPhotoBrowser.h"

@interface RTImagePickerZoomingScrollView (Bm)
+ (BOOL)initWithPhotoBrowserBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)prepareForReuseBm:(NSInteger)BM;
+ (BOOL)displayingVideoBm:(NSInteger)BM;
+ (BOOL)setImageHiddenBm:(NSInteger)BM;
+ (BOOL)setPhotoBm:(NSInteger)BM;
+ (BOOL)displayImageBm:(NSInteger)BM;
+ (BOOL)displayImageFailureBm:(NSInteger)BM;
+ (BOOL)hideImageFailureBm:(NSInteger)BM;
+ (BOOL)setProgressFromNotificationBm:(NSInteger)BM;
+ (BOOL)showLoadingIndicatorBm:(NSInteger)BM;
+ (BOOL)initialZoomScaleWithMinScaleBm:(NSInteger)BM;
+ (BOOL)setMaxMinZoomScalesForCurrentBoundsBm:(NSInteger)BM;
+ (BOOL)layoutSubviewsBm:(NSInteger)BM;
+ (BOOL)viewForZoomingInScrollViewBm:(NSInteger)BM;
+ (BOOL)scrollViewWillBeginDraggingBm:(NSInteger)BM;
+ (BOOL)scrollViewWillBeginZoomingWithviewBm:(NSInteger)BM;
+ (BOOL)scrollViewDidEndDraggingWilldecelerateBm:(NSInteger)BM;
+ (BOOL)scrollViewDidZoomBm:(NSInteger)BM;
+ (BOOL)handleSingleTapBm:(NSInteger)BM;
+ (BOOL)handleDoubleTapBm:(NSInteger)BM;
+ (BOOL)imageViewSingletapdetectedBm:(NSInteger)BM;
+ (BOOL)imageViewDoubletapdetectedBm:(NSInteger)BM;
+ (BOOL)viewSingletapdetectedBm:(NSInteger)BM;
+ (BOOL)viewDoubletapdetectedBm:(NSInteger)BM;

@end
