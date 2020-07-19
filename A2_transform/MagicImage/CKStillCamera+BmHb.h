#import <GPUImage/GPUImage.h>
#import "CKStillCamera.h"
#import "CKStillCamera+Bm.h"

@interface CKStillCamera (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)registerObserverBmHb:(NSInteger)hb;
+ (BOOL)isFocusPointOfInterestSupportedBmHb:(NSInteger)hb;
+ (BOOL)focusAtPointBmHb:(NSInteger)hb;
+ (BOOL)setFocusModelBmHb:(NSInteger)hb;
+ (BOOL)isAutoFocusRangeRestrictionSupportedBmHb:(NSInteger)hb;
+ (BOOL)setAutoFocusRangeRestrictionModelBmHb:(NSInteger)hb;
+ (BOOL)isSmoothAutoFocusSupportedBmHb:(NSInteger)hb;
+ (BOOL)enableSmoothAutoFocusBmHb:(NSInteger)hb;
+ (BOOL)isExposurePointOfInterestSupportedBmHb:(NSInteger)hb;
+ (BOOL)setExposeModelBmHb:(NSInteger)hb;
+ (BOOL)exposeAtPointBmHb:(NSInteger)hb;
+ (BOOL)exposureTargetOffsetBmHb:(NSInteger)hb;
+ (BOOL)setExposureModeCustomWithDurationIsoCompletionhandlerBmHb:(NSInteger)hb;
+ (BOOL)currentISOPercentageBmHb:(NSInteger)hb;
+ (BOOL)currentFlashModelBmHb:(NSInteger)hb;
+ (BOOL)setFlashModelBmHb:(NSInteger)hb;
+ (BOOL)currentWhiteBalanceModeBmHb:(NSInteger)hb;
+ (BOOL)setWhiteBalanceModeBmHb:(NSInteger)hb;
+ (BOOL)currentTorchModelBmHb:(NSInteger)hb;
+ (BOOL)setTorchModelBmHb:(NSInteger)hb;
+ (BOOL)setTorchLevelBmHb:(NSInteger)hb;
+ (BOOL)videoCanZoomBmHb:(NSInteger)hb;
+ (BOOL)videoMaxZoomFactorBmHb:(NSInteger)hb;
+ (BOOL)videoZoomFactorBmHb:(NSInteger)hb;
+ (BOOL)setVideoZoomFactorBmHb:(NSInteger)hb;
+ (BOOL)rampZoomToFactorBmHb:(NSInteger)hb;
+ (BOOL)rotateCameraBmHb:(NSInteger)hb;
+ (BOOL)observeValueForKeyPathOfobjectChangeContextBmHb:(NSInteger)hb;

@end
