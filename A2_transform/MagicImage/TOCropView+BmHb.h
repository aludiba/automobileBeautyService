#import <UIKit/UIKit.h>
#import "TOCropViewConstants.h"
#import "TOCropView.h"
#import "TOCropOverlayView.h"
#import "TOCropScrollView.h"
#import "TOCropView+Bm.h"

@interface TOCropView (BmHb)
+ (BOOL)initWithImageBmHb:(NSInteger)hb;
+ (BOOL)initWithCroppingStyleImageBmHb:(NSInteger)hb;
+ (BOOL)setupBmHb:(NSInteger)hb;
+ (BOOL)performInitialSetupBmHb:(NSInteger)hb;
+ (BOOL)layoutInitialImageBmHb:(NSInteger)hb;
+ (BOOL)prepareforRotationBmHb:(NSInteger)hb;
+ (BOOL)performRelayoutForRotationBmHb:(NSInteger)hb;
+ (BOOL)matchForegroundToBackgroundBmHb:(NSInteger)hb;
+ (BOOL)updateCropBoxFrameWithGesturePointBmHb:(NSInteger)hb;
+ (BOOL)resetLayoutToDefaultAnimatedBmHb:(NSInteger)hb;
+ (BOOL)toggleTranslucencyViewVisibleBmHb:(NSInteger)hb;
+ (BOOL)updateToImageCropFrameBmHb:(NSInteger)hb;
+ (BOOL)gridPanGestureRecognizedBmHb:(NSInteger)hb;
+ (BOOL)longPressGestureRecognizedBmHb:(NSInteger)hb;
+ (BOOL)gestureRecognizerShouldBeginBmHb:(NSInteger)hb;
+ (BOOL)gestureRecognizerShouldreceivetouchBmHb:(NSInteger)hb;
+ (BOOL)startResetTimerBmHb:(NSInteger)hb;
+ (BOOL)timerTriggeredBmHb:(NSInteger)hb;
+ (BOOL)cancelResetTimerBmHb:(NSInteger)hb;
+ (BOOL)cropEdgeForPointBmHb:(NSInteger)hb;
+ (BOOL)viewForZoomingInScrollViewBmHb:(NSInteger)hb;
+ (BOOL)scrollViewDidScrollBmHb:(NSInteger)hb;
+ (BOOL)scrollViewWillBeginDraggingBmHb:(NSInteger)hb;
+ (BOOL)scrollViewWillBeginZoomingWithviewBmHb:(NSInteger)hb;
+ (BOOL)scrollViewDidEndDeceleratingBmHb:(NSInteger)hb;
+ (BOOL)scrollViewDidEndZoomingWithviewAtscaleBmHb:(NSInteger)hb;
+ (BOOL)scrollViewDidZoomBmHb:(NSInteger)hb;
+ (BOOL)scrollViewDidEndDraggingWilldecelerateBmHb:(NSInteger)hb;
+ (BOOL)setCropBoxResizeEnabledBmHb:(NSInteger)hb;
+ (BOOL)setCropBoxFrameBmHb:(NSInteger)hb;
+ (BOOL)setEditingBmHb:(NSInteger)hb;
+ (BOOL)setSimpleRenderModeBmHb:(NSInteger)hb;
+ (BOOL)cropBoxAspectRatioIsPortraitBmHb:(NSInteger)hb;
+ (BOOL)imageCropFrameBmHb:(NSInteger)hb;
+ (BOOL)setImageCropFrameBmHb:(NSInteger)hb;
+ (BOOL)setCroppingViewsHiddenBmHb:(NSInteger)hb;
+ (BOOL)setCroppingViewsHiddenAnimatedBmHb:(NSInteger)hb;
+ (BOOL)setBackgroundImageViewHiddenAnimatedBmHb:(NSInteger)hb;
+ (BOOL)setGridOverlayHiddenBmHb:(NSInteger)hb;
+ (BOOL)setGridOverlayHiddenAnimatedBmHb:(NSInteger)hb;
+ (BOOL)imageViewFrameBmHb:(NSInteger)hb;
+ (BOOL)setCanBeResetBmHb:(NSInteger)hb;
+ (BOOL)setAngleBmHb:(NSInteger)hb;
+ (BOOL)startEditingBmHb:(NSInteger)hb;
+ (BOOL)setEditingResetcropboxAnimatedBmHb:(NSInteger)hb;
+ (BOOL)moveCroppedContentToCenterAnimatedBmHb:(NSInteger)hb;
+ (BOOL)setSimpleRenderModeAnimatedBmHb:(NSInteger)hb;
+ (BOOL)setAspectRatioBmHb:(NSInteger)hb;
+ (BOOL)setAspectRatioAnimatedBmHb:(NSInteger)hb;
+ (BOOL)rotateImageNinetyDegreesAnimatedBmHb:(NSInteger)hb;
+ (BOOL)rotateImageNinetyDegreesAnimatedClockwiseBmHb:(NSInteger)hb;
+ (BOOL)captureStateForImageRotationBmHb:(NSInteger)hb;
+ (BOOL)checkForCanResetBmHb:(NSInteger)hb;
+ (BOOL)contentBoundsBmHb:(NSInteger)hb;
+ (BOOL)imageSizeBmHb:(NSInteger)hb;
+ (BOOL)hasAspectRatioBmHb:(NSInteger)hb;

@end
