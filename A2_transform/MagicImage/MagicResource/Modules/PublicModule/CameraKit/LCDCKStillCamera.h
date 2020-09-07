#import <GPUImage/GPUImage.h>
@interface LCDCKStillCamera : GPUImageStillCamera
@property(nullable, nonatomic, copy) void(^LCDISOChangeBlock)(float LCDISO);
@property(nullable, nonatomic, copy) void(^LCDISOAdjustingBlock)(BOOL LCDadjust);
@property(nullable, nonatomic, copy) void(^LCDFocusAdjustingBlock)(BOOL LCDadjust);
- (BOOL)LCDisFocusPointOfInterestSupported;
- (void)LCDfocusAtPoint:(CGPoint)LCDpoint;
- (void)LCDsetFocusModel:(AVCaptureFocusMode)LCDfocusModel;
- (BOOL)LCDisAutoFocusRangeRestrictionSupported;
- (void)LCDsetAutoFocusRangeRestrictionModel:(AVCaptureAutoFocusRangeRestriction)LCDautoFocusModel;
- (BOOL)LCDisSmoothAutoFocusSupported;
- (void)LCDenableSmoothAutoFocus:(BOOL)LCDenable;
- (BOOL)LCDisExposurePointOfInterestSupported;
- (void)LCDsetExposeModel:(AVCaptureExposureMode)LCDexposeModel;
- (void)LCDexposeAtPoint:(CGPoint)LCDpoint;
- (float)LCDexposureTargetOffset;
- (CGFloat)LCDcurrentISOPercentage;
- (void)LCDsetExposureModeCustomWithDuration:(CMTime)duration ISO:(float)ISO completionHandler:(nullable void (^)(CMTime syncTime))handler;
- (AVCaptureFlashMode)LCDcurrentFlashModel;
- (void)LCDsetFlashModel:(AVCaptureFlashMode)LCDflashModel;
- (AVCaptureWhiteBalanceMode)LCDcurrentWhiteBalanceMode;
- (void)LCDsetWhiteBalanceMode:(AVCaptureWhiteBalanceMode)LCDwhiteBalanceMode;
- (AVCaptureTorchMode)LCDcurrentTorchModel;
- (void)LCDsetTorchModel:(AVCaptureTorchMode)LCDtorchModel;
- (void)LCDsetTorchLevel:(float)LCDtorchLevel;
- (BOOL)LCDvideoCanZoom;
- (float)LCDvideoZoomFactor;
- (float)LCDvideoMaxZoomFactor;
- (void)LCDsetVideoZoomFactor:(float)LCDfactor;
- (void)LCDrampZoomToFactor:(float)LCDfactor;
@end
