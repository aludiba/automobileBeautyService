#import "BKCKStillCamera.h"
static void* BKISOContext;
static void* BKISOAdjustingContext;
static void* BKFocusAdjustingContext;
static void* BKExposureTargetOffsetContext;
@implementation BKCKStillCamera
- (instancetype)init
{
    if (self = [super init]) {
        [self BKregisterObserver];
    }
    return self;
}
- (void)BKregisterObserver
{
    [self.inputCamera addObserver:self forKeyPath:@"ISO" options:NSKeyValueObservingOptionNew context:&BKISOContext];
    [self.inputCamera addObserver:self forKeyPath:@"adjustingFocus" options:NSKeyValueObservingOptionNew context:&BKFocusAdjustingContext];
    [self.inputCamera addObserver:self forKeyPath:@"adjustingExposure" options:NSKeyValueObservingOptionNew context:&BKISOAdjustingContext];
    [self.inputCamera addObserver:self forKeyPath:@"exposureTargetOffset" options:NSKeyValueObservingOptionNew context:&BKExposureTargetOffsetContext];
}
#pragma mark - 调整焦距
- (BOOL)BKisFocusPointOfInterestSupported
{
    return [[self inputCamera] isFocusPointOfInterestSupported];
}
- (void)BKfocusAtPoint:(CGPoint)BKpoint
{
    if (![[self inputCamera] isFocusPointOfInterestSupported]) {
        return;
    }
    if ([[self inputCamera] isFocusModeSupported:AVCaptureFocusModeAutoFocus]) {
        NSError *error;
        if ([[self inputCamera] lockForConfiguration:&error]) {
            [self inputCamera].focusPointOfInterest = BKpoint;
            [self inputCamera].focusMode = AVCaptureFocusModeAutoFocus;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (void)BKsetFocusModel:(AVCaptureFocusMode)BKfocusModel
{
    if (![[self inputCamera] isFocusPointOfInterestSupported]) {
        return;
    }
    if ([[self inputCamera] isFocusModeSupported:BKfocusModel]) {
        NSError *error;
        if ([[self inputCamera] lockForConfiguration:&error]) {
            [self inputCamera].focusMode = BKfocusModel;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (BOOL)BKisAutoFocusRangeRestrictionSupported
{
    return [[self inputCamera] isAutoFocusRangeRestrictionSupported];
}
-  (void)BKsetAutoFocusRangeRestrictionModel:(AVCaptureAutoFocusRangeRestriction)BKautoFocusModel
{
    if (![[self inputCamera] isAutoFocusRangeRestrictionSupported]) {
        return;
    }
    if ([[self inputCamera] isFocusModeSupported:AVCaptureFocusModeAutoFocus]) {
        NSError *error;
        if ([[self inputCamera] lockForConfiguration:&error]) {
            [self inputCamera].autoFocusRangeRestriction = BKautoFocusModel;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (BOOL)BKisSmoothAutoFocusSupported
{
    return [[self inputCamera] isSmoothAutoFocusSupported];
}
- (void)BKenableSmoothAutoFocus:(BOOL)BKenable
{
    if (![[self inputCamera] isSmoothAutoFocusSupported]) {
        return;
    }
    if ([[self inputCamera] isFocusModeSupported:AVCaptureFocusModeAutoFocus]) {
        NSError *BKerror;
        if ([[self inputCamera] lockForConfiguration:&BKerror]) {
            self.inputCamera.smoothAutoFocusEnabled = BKenable;
        }
    }
}
#pragma mark - 曝光
- (BOOL)BKisExposurePointOfInterestSupported
{
    return [[self inputCamera] isExposurePointOfInterestSupported];
}
- (void)BKsetExposeModel:(AVCaptureExposureMode)BKexposeModel
{
    if ([[self inputCamera] isExposureModeSupported:AVCaptureExposureModeAutoExpose]) {
        NSError *BKerror;
        if ([[self inputCamera] lockForConfiguration:&BKerror]) {
            [self inputCamera].exposureMode = AVCaptureExposureModeAutoExpose;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (void)BKexposeAtPoint:(CGPoint)BKpoint
{
    if (![[self inputCamera] isExposurePointOfInterestSupported]) {
        return;
    }
    if ([[self inputCamera] isExposureModeSupported:AVCaptureExposureModeAutoExpose]) {
        NSError *BKerror;
        if ([[self inputCamera] lockForConfiguration:&BKerror]) {
            [self inputCamera].exposurePointOfInterest = BKpoint;
            [self inputCamera].exposureMode = AVCaptureExposureModeContinuousAutoExposure;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (float)BKexposureTargetOffset
{
    return [self.inputCamera exposureTargetOffset];
}
- (void)BKsetExposureModeCustomWithDuration:(CMTime)BKduration ISO:(float)BKISO completionHandler:(void (^)(CMTime))BKhandler
{
    CMTime BKmaxExposureDuration = [self inputCamera].activeFormat.maxExposureDuration;
    CMTime BKminExposureDuration = [self inputCamera].activeFormat.minExposureDuration;
    CGFloat BKminISO = [self inputCamera].activeFormat.minISO;
    CGFloat BKmaxISO = [self inputCamera].activeFormat.maxISO;
    if (CMTimeCompare(BKduration, kCMTimeInvalid) == 0 || CMTimeCompare(BKduration, kCMTimeZero) == 0) {
        BKduration = BKminExposureDuration;
    }else if (CMTimeCompare(BKduration, BKmaxExposureDuration) > 0) {
        BKduration = BKmaxExposureDuration;
    }else if (CMTimeCompare(BKduration, BKminExposureDuration) < 0) {
        BKduration = BKminExposureDuration;
    }
    BKISO = BKISO * (BKmaxISO - BKminISO) + BKminISO;
    BKISO = MAX(MIN(BKISO, BKmaxISO), BKminISO);
    NSError *BKerror;
    if ([[self inputCamera] lockForConfiguration:&BKerror]) {
        [[self inputCamera] setExposureModeCustomWithDuration:AVCaptureExposureDurationCurrent ISO:BKISO completionHandler:^(CMTime BKsyncTime) {
            if (BKhandler) {
                BKhandler(BKsyncTime);
            }
        }];
        [[self inputCamera] unlockForConfiguration];
    }else {
        if (BKhandler) {
            BKhandler(kCMTimeInvalid);
        }
    }
}
- (CGFloat)BKcurrentISOPercentage
{
    CGFloat BKminISO = [self inputCamera].activeFormat.minISO;
    CGFloat BKmaxISO = [self inputCamera].activeFormat.maxISO;
    CGFloat BKcurrent = [self inputCamera].ISO;
    return (BKcurrent - BKminISO)/(BKmaxISO - BKminISO);
}
#pragma mark - 闪光灯
- (AVCaptureFlashMode)BKcurrentFlashModel
{
    return [self inputCamera].flashMode;
}
- (void)BKsetFlashModel:(AVCaptureFlashMode)BKflashModel
{
    if ([self inputCamera].flashMode == BKflashModel) {
        return;
    }
    if ([[self inputCamera] isFlashModeSupported:BKflashModel]) {
        NSError *BKerror;
        if ([[self inputCamera] lockForConfiguration:&BKerror]) {
            [self inputCamera].flashMode = BKflashModel;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
#pragma mark - 白平衡
- (AVCaptureWhiteBalanceMode)BKcurrentWhiteBalanceMode
{
    return [self inputCamera].whiteBalanceMode;
}
- (void)BKsetWhiteBalanceMode:(AVCaptureWhiteBalanceMode)BKwhiteBalanceMode
{
    if ([self inputCamera].whiteBalanceMode == BKwhiteBalanceMode) {
        return;
    }
    if ([[self inputCamera] isWhiteBalanceModeSupported:BKwhiteBalanceMode]) {
        NSError *BKerror;
        if ([[self inputCamera] lockForConfiguration:&BKerror]) {
            [[self inputCamera] setWhiteBalanceMode:BKwhiteBalanceMode];
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
#pragma mark - 手电筒
- (AVCaptureTorchMode)BKcurrentTorchModel
{
    return [self inputCamera].torchMode;
}
- (void)BKsetTorchModel:(AVCaptureTorchMode)BKtorchModel
{
    if ([self inputCamera].torchMode == BKtorchModel) {
        return;
    }
    if ([[self inputCamera] isTorchModeSupported:BKtorchModel]) {
        NSError *BKerror;
        if ([[self inputCamera] lockForConfiguration:&BKerror]) {
            [self inputCamera].torchMode = BKtorchModel;
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
- (void)BKsetTorchLevel:(float)BKtorchLevel
{
    if ([[self inputCamera] isTorchActive]) {
        NSError *BKerror;
        if ([[self inputCamera] lockForConfiguration:&BKerror]) {
            [[self inputCamera] setTorchModeOnWithLevel:BKtorchLevel error:&BKerror];
            [[self inputCamera] unlockForConfiguration];
        }
    }
}
#pragma mark - 视频缩放
- (BOOL)BKvideoCanZoom
{
    return [self inputCamera].activeFormat.videoMaxZoomFactor > 1.0f;
}
- (float)BKvideoMaxZoomFactor
{
    return MIN([self inputCamera].activeFormat.videoMaxZoomFactor, 4.0f);
}
- (float)BKvideoZoomFactor
{
    return [self inputCamera].videoZoomFactor;
}
- (void)BKsetVideoZoomFactor:(float)BKfactor
{
    if ([self inputCamera].isRampingVideoZoom) {
        return;
    }
    NSError *BKerror;
    if ([[self inputCamera] lockForConfiguration:&BKerror]) {
        BKfactor = MAX(MIN(BKfactor, [self BKvideoMaxZoomFactor]), 1.0f);
        [self inputCamera].videoZoomFactor = BKfactor;
        [[self inputCamera] unlockForConfiguration];
    }
}
- (void)BKrampZoomToFactor:(float)BKfactor
{
    if ([self inputCamera].isRampingVideoZoom) {
        return;
    }
    NSError *BKerror;
    if ([[self inputCamera] lockForConfiguration:&BKerror]) {
        [[self inputCamera] rampToVideoZoomFactor:pow([self BKvideoMaxZoomFactor], BKfactor) withRate:50.0f];
        [[self inputCamera] unlockForConfiguration];
    }
}
- (void)rotateCamera
{
    [super rotateCamera];
    [self BKregisterObserver];
}
#pragma mark - Observer
- (void)observeValueForKeyPath:(NSString *)BKkeyPath ofObject:(id)BKobject change:(NSDictionary<NSKeyValueChangeKey,id> *)BKchange context:(void *)BKcontext
{
    if (&BKISOContext == BKcontext) {
        if (_BKISOChangeBlock) {
            _BKISOChangeBlock([BKchange[NSKeyValueChangeNewKey] floatValue]);
        }
    }else if (&BKISOAdjustingContext == BKcontext) {
        if (_BKISOAdjustingBlock) {
            _BKISOAdjustingBlock([BKchange[NSKeyValueChangeNewKey] boolValue]);
        }
    }else if (&BKFocusAdjustingContext == BKcontext) {
        if (_BKFocusAdjustingBlock) {
            _BKFocusAdjustingBlock([BKchange[NSKeyValueChangeNewKey] boolValue]);
        }
    }else if (&BKExposureTargetOffsetContext == BKcontext) {
    }
}
@end
