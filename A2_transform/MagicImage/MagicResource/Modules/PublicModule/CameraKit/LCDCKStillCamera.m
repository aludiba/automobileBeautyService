#import "LCDCKStillCamera.h"
static void* LCDISOContext;
static void* LCDISOAdjustingContext;
static void* LCDFocusAdjustingContext;
static void* LCDExposureTargetOffsetContext;
@implementation LCDCKStillCamera
- (instancetype)init
{
    if (self = [super init]) {
        [self LCDregisterObserver];
    }
    return self;
}
- (void)LCDregisterObserver
{
    [self.inputCamera addObserver:self forKeyPath:@"ISO" options:NSKeyValueObservingOptionNew context:&LCDISOContext];
    [self.inputCamera addObserver:self forKeyPath:@"adjustingFocus" options:NSKeyValueObservingOptionNew context:&LCDFocusAdjustingContext];
    [self.inputCamera addObserver:self forKeyPath:@"adjustingExposure" options:NSKeyValueObservingOptionNew context:&LCDISOAdjustingContext];
    [self.inputCamera addObserver:self forKeyPath:@"exposureTargetOffset" options:NSKeyValueObservingOptionNew context:&LCDExposureTargetOffsetContext];
}
#pragma mark - 调整焦距
- (BOOL)LCDisFocusPointOfInterestSupported
{
    return [[self inputCamera] isFocusPointOfInterestSupported];
}
- (void)LCDfocusAtPoint:(CGPoint)LCDpoint
{
    if (![[self inputCamera] isFocusPointOfInterestSupported]) {
        return;
    }
    if ([[self inputCamera] isFocusModeSupported:AVCaptureFocusModeAutoFocus]) {
        NSError *error;
        if ([[self inputCamera] lockForConfiguration:&error]) {
            [self inputCamera].focusPointOfInterest = LCDpoint;
            [self inputCamera].focusMode = AVCaptureFocusModeAutoFocus;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (void)LCDsetFocusModel:(AVCaptureFocusMode)LCDfocusModel
{
    if (![[self inputCamera] isFocusPointOfInterestSupported]) {
        return;
    }
    if ([[self inputCamera] isFocusModeSupported:LCDfocusModel]) {
        NSError *error;
        if ([[self inputCamera] lockForConfiguration:&error]) {
            [self inputCamera].focusMode = LCDfocusModel;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (BOOL)LCDisAutoFocusRangeRestrictionSupported
{
    return [[self inputCamera] isAutoFocusRangeRestrictionSupported];
}
-  (void)LCDsetAutoFocusRangeRestrictionModel:(AVCaptureAutoFocusRangeRestriction)LCDautoFocusModel
{
    if (![[self inputCamera] isAutoFocusRangeRestrictionSupported]) {
        return;
    }
    if ([[self inputCamera] isFocusModeSupported:AVCaptureFocusModeAutoFocus]) {
        NSError *error;
        if ([[self inputCamera] lockForConfiguration:&error]) {
            [self inputCamera].autoFocusRangeRestriction = LCDautoFocusModel;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (BOOL)LCDisSmoothAutoFocusSupported
{
    return [[self inputCamera] isSmoothAutoFocusSupported];
}
- (void)LCDenableSmoothAutoFocus:(BOOL)LCDenable
{
    if (![[self inputCamera] isSmoothAutoFocusSupported]) {
        return;
    }
    if ([[self inputCamera] isFocusModeSupported:AVCaptureFocusModeAutoFocus]) {
        NSError *LCDerror;
        if ([[self inputCamera] lockForConfiguration:&LCDerror]) {
            self.inputCamera.smoothAutoFocusEnabled = LCDenable;
        }
    }
}
#pragma mark - 曝光
- (BOOL)LCDisExposurePointOfInterestSupported
{
    return [[self inputCamera] isExposurePointOfInterestSupported];
}
- (void)LCDsetExposeModel:(AVCaptureExposureMode)LCDexposeModel
{
    if ([[self inputCamera] isExposureModeSupported:AVCaptureExposureModeAutoExpose]) {
        NSError *LCDerror;
        if ([[self inputCamera] lockForConfiguration:&LCDerror]) {
            [self inputCamera].exposureMode = AVCaptureExposureModeAutoExpose;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (void)LCDexposeAtPoint:(CGPoint)LCDpoint
{
    if (![[self inputCamera] isExposurePointOfInterestSupported]) {
        return;
    }
    if ([[self inputCamera] isExposureModeSupported:AVCaptureExposureModeAutoExpose]) {
        NSError *LCDerror;
        if ([[self inputCamera] lockForConfiguration:&LCDerror]) {
            [self inputCamera].exposurePointOfInterest = LCDpoint;
            [self inputCamera].exposureMode = AVCaptureExposureModeContinuousAutoExposure;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (float)LCDexposureTargetOffset
{
    return [self.inputCamera exposureTargetOffset];
}
- (void)LCDsetExposureModeCustomWithDuration:(CMTime)LCDduration ISO:(float)LCDISO completionHandler:(void (^)(CMTime))LCDhandler
{
    CMTime LCDmaxExposureDuration = [self inputCamera].activeFormat.maxExposureDuration;
    CMTime LCDminExposureDuration = [self inputCamera].activeFormat.minExposureDuration;
    CGFloat LCDminISO = [self inputCamera].activeFormat.minISO;
    CGFloat LCDmaxISO = [self inputCamera].activeFormat.maxISO;
    if (CMTimeCompare(LCDduration, kCMTimeInvalid) == 0 || CMTimeCompare(LCDduration, kCMTimeZero) == 0) {
        LCDduration = LCDminExposureDuration;
    }else if (CMTimeCompare(LCDduration, LCDmaxExposureDuration) > 0) {
        LCDduration = LCDmaxExposureDuration;
    }else if (CMTimeCompare(LCDduration, LCDminExposureDuration) < 0) {
        LCDduration = LCDminExposureDuration;
    }
    LCDISO = LCDISO * (LCDmaxISO - LCDminISO) + LCDminISO;
    LCDISO = MAX(MIN(LCDISO, LCDmaxISO), LCDminISO);
    NSError *LCDerror;
    if ([[self inputCamera] lockForConfiguration:&LCDerror]) {
        [[self inputCamera] setExposureModeCustomWithDuration:AVCaptureExposureDurationCurrent ISO:LCDISO completionHandler:^(CMTime LCDsyncTime) {
            if (LCDhandler) {
                LCDhandler(LCDsyncTime);
            }
        }];
        [[self inputCamera] unlockForConfiguration];
    }else {
        if (LCDhandler) {
            LCDhandler(kCMTimeInvalid);
        }
    }
}
- (CGFloat)LCDcurrentISOPercentage
{
    CGFloat LCDminISO = [self inputCamera].activeFormat.minISO;
    CGFloat LCDmaxISO = [self inputCamera].activeFormat.maxISO;
    CGFloat LCDcurrent = [self inputCamera].ISO;
    return (LCDcurrent - LCDminISO)/(LCDmaxISO - LCDminISO);
}
#pragma mark - 闪光灯
- (AVCaptureFlashMode)LCDcurrentFlashModel
{
    return [self inputCamera].flashMode;
}
- (void)LCDsetFlashModel:(AVCaptureFlashMode)LCDflashModel
{
    if ([self inputCamera].flashMode == LCDflashModel) {
        return;
    }
    if ([[self inputCamera] isFlashModeSupported:LCDflashModel]) {
        NSError *LCDerror;
        if ([[self inputCamera] lockForConfiguration:&LCDerror]) {
            [self inputCamera].flashMode = LCDflashModel;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
#pragma mark - 白平衡
- (AVCaptureWhiteBalanceMode)LCDcurrentWhiteBalanceMode
{
    return [self inputCamera].whiteBalanceMode;
}
- (void)LCDsetWhiteBalanceMode:(AVCaptureWhiteBalanceMode)LCDwhiteBalanceMode
{
    if ([self inputCamera].whiteBalanceMode == LCDwhiteBalanceMode) {
        return;
    }
    if ([[self inputCamera] isWhiteBalanceModeSupported:LCDwhiteBalanceMode]) {
        NSError *LCDerror;
        if ([[self inputCamera] lockForConfiguration:&LCDerror]) {
            [[self inputCamera] setWhiteBalanceMode:LCDwhiteBalanceMode];
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
#pragma mark - 手电筒
- (AVCaptureTorchMode)LCDcurrentTorchModel
{
    return [self inputCamera].torchMode;
}
- (void)LCDsetTorchModel:(AVCaptureTorchMode)LCDtorchModel
{
    if ([self inputCamera].torchMode == LCDtorchModel) {
        return;
    }
    if ([[self inputCamera] isTorchModeSupported:LCDtorchModel]) {
        NSError *LCDerror;
        if ([[self inputCamera] lockForConfiguration:&LCDerror]) {
            [self inputCamera].torchMode = LCDtorchModel;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (void)LCDsetTorchLevel:(float)LCDtorchLevel
{
    if ([[self inputCamera] isTorchActive]) {
        NSError *LCDerror;
        if ([[self inputCamera] lockForConfiguration:&LCDerror]) {
            [[self inputCamera] setTorchModeOnWithLevel:LCDtorchLevel error:&LCDerror];
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
#pragma mark - 视频缩放
- (BOOL)LCDvideoCanZoom
{
    return [self inputCamera].activeFormat.videoMaxZoomFactor > 1.0f;
}
- (float)LCDvideoMaxZoomFactor
{
    return MIN([self inputCamera].activeFormat.videoMaxZoomFactor, 4.0f);
}
- (float)LCDvideoZoomFactor
{
    return [self inputCamera].videoZoomFactor;
}
- (void)LCDsetVideoZoomFactor:(float)LCDfactor
{
    if ([self inputCamera].isRampingVideoZoom) {
        return;
    }
    NSError *LCDerror;
    if ([[self inputCamera] lockForConfiguration:&LCDerror]) {
        LCDfactor = MAX(MIN(LCDfactor, [self LCDvideoMaxZoomFactor]), 1.0f);
        [self inputCamera].videoZoomFactor = LCDfactor;
        [[self inputCamera] unlockForConfiguration];
    }
}
- (void)LCDrampZoomToFactor:(float)LCDfactor
{
    if ([self inputCamera].isRampingVideoZoom) {
        return;
    }
    NSError *LCDerror;
    if ([[self inputCamera] lockForConfiguration:&LCDerror]) {
        [[self inputCamera] rampToVideoZoomFactor:pow([self LCDvideoMaxZoomFactor], LCDfactor) withRate:50.0f];
        [[self inputCamera] unlockForConfiguration];
    }
}
- (void)rotateCamera
{
    [super rotateCamera];
    [self LCDregisterObserver];
}
#pragma mark - Observer
- (void)observeValueForKeyPath:(NSString *)LCDkeyPath ofObject:(id)LCDobject change:(NSDictionary<NSKeyValueChangeKey,id> *)LCDchange context:(void *)LCDcontext
{
    if (&LCDISOContext == LCDcontext) {
        if (_LCDISOChangeBlock) {
            _LCDISOChangeBlock([LCDchange[NSKeyValueChangeNewKey] floatValue]);
        }
    }else if (&LCDISOAdjustingContext == LCDcontext) {
        if (_LCDISOAdjustingBlock) {
            _LCDISOAdjustingBlock([LCDchange[NSKeyValueChangeNewKey] boolValue]);
        }
    }else if (&LCDFocusAdjustingContext == LCDcontext) {
        if (_LCDFocusAdjustingBlock) {
            _LCDFocusAdjustingBlock([LCDchange[NSKeyValueChangeNewKey] boolValue]);
        }
    }else if (&LCDExposureTargetOffsetContext == LCDcontext) {
    }
}
@end
