#import <GPUImage/GPUImage.h>
@interface BKCKStillCamera : GPUImageStillCamera
@property(nullable, nonatomic, copy) void(^BKISOChangeBlock)(float BKISO);
@property(nullable, nonatomic, copy) void(^BKISOAdjustingBlock)(BOOL BKadjust);
@property(nullable, nonatomic, copy) void(^BKFocusAdjustingBlock)(BOOL BKadjust);
- (BOOL)BKisFocusPointOfInterestSupported;
- (void)BKfocusAtPoint:(CGPoint)BKpoint;
- (void)BKsetFocusModel:(AVCaptureFocusMode)BKfocusModel;
- (BOOL)BKisAutoFocusRangeRestrictionSupported;
- (void)BKsetAutoFocusRangeRestrictionModel:(AVCaptureAutoFocusRangeRestriction)BKautoFocusModel;
- (BOOL)BKisSmoothAutoFocusSupported;
- (void)BKenableSmoothAutoFocus:(BOOL)BKenable;
- (BOOL)BKisExposurePointOfInterestSupported;
- (void)BKsetExposeModel:(AVCaptureExposureMode)BKexposeModel;
- (void)BKexposeAtPoint:(CGPoint)BKpoint;
- (float)BKexposureTargetOffset;
- (CGFloat)BKcurrentISOPercentage;
- (void)BKsetExposureModeCustomWithDuration:(CMTime)duration ISO:(float)ISO completionHandler:(nullable void (^)(CMTime syncTime))handler;
- (AVCaptureFlashMode)BKcurrentFlashModel;
- (void)BKsetFlashModel:(AVCaptureFlashMode)BKflashModel;
- (AVCaptureWhiteBalanceMode)BKcurrentWhiteBalanceMode;
- (void)BKsetWhiteBalanceMode:(AVCaptureWhiteBalanceMode)BKwhiteBalanceMode;
- (AVCaptureTorchMode)BKcurrentTorchModel;
- (void)BKsetTorchModel:(AVCaptureTorchMode)BKtorchModel;
- (void)BKsetTorchLevel:(float)BKtorchLevel;
- (BOOL)BKvideoCanZoom;
- (float)BKvideoZoomFactor;
- (float)BKvideoMaxZoomFactor;
- (void)BKsetVideoZoomFactor:(float)BKfactor;
- (void)BKrampZoomToFactor:(float)BKfactor;
@end
