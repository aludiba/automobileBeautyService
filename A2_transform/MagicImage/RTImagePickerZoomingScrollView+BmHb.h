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
#import "RTImagePickerZoomingScrollView+Bm.h"

@interface RTImagePickerZoomingScrollView (BmHb)
+ (BOOL)initWithPhotoBrowserBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)prepareForReuseBmHb:(NSInteger)hb;
+ (BOOL)displayingVideoBmHb:(NSInteger)hb;
+ (BOOL)setImageHiddenBmHb:(NSInteger)hb;
+ (BOOL)setPhotoBmHb:(NSInteger)hb;
+ (BOOL)displayImageBmHb:(NSInteger)hb;
+ (BOOL)displayImageFailureBmHb:(NSInteger)hb;
+ (BOOL)hideImageFailureBmHb:(NSInteger)hb;
+ (BOOL)setProgressFromNotificationBmHb:(NSInteger)hb;
+ (BOOL)showLoadingIndicatorBmHb:(NSInteger)hb;
+ (BOOL)initialZoomScaleWithMinScaleBmHb:(NSInteger)hb;
+ (BOOL)setMaxMinZoomScalesForCurrentBoundsBmHb:(NSInteger)hb;
+ (BOOL)layoutSubviewsBmHb:(NSInteger)hb;
+ (BOOL)viewForZoomingInScrollViewBmHb:(NSInteger)hb;
+ (BOOL)scrollViewWillBeginDraggingBmHb:(NSInteger)hb;
+ (BOOL)scrollViewWillBeginZoomingWithviewBmHb:(NSInteger)hb;
+ (BOOL)scrollViewDidEndDraggingWilldecelerateBmHb:(NSInteger)hb;
+ (BOOL)scrollViewDidZoomBmHb:(NSInteger)hb;
+ (BOOL)handleSingleTapBmHb:(NSInteger)hb;
+ (BOOL)handleDoubleTapBmHb:(NSInteger)hb;
+ (BOOL)imageViewSingletapdetectedBmHb:(NSInteger)hb;
+ (BOOL)imageViewDoubletapdetectedBmHb:(NSInteger)hb;
+ (BOOL)viewSingletapdetectedBmHb:(NSInteger)hb;
+ (BOOL)viewDoubletapdetectedBmHb:(NSInteger)hb;

@end
