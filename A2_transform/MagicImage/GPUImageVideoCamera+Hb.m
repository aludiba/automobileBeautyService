#import "GPUImageVideoCamera+Hb.h"
@implementation GPUImageVideoCamera (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)initWithSessionPresetCamerapositionHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)framebufferForOutputHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)addAudioInputsAndOutputsHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)removeAudioInputsAndOutputsHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)removeInputsAndOutputsHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)startCameraCaptureHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)stopCameraCaptureHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)pauseCameraCaptureHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)resumeCameraCaptureHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)rotateCameraHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)cameraPositionHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)isBackFacingCameraPresentHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)isBackFacingCameraPresentHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)isFrontFacingCameraPresentHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)isFrontFacingCameraPresentHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setCaptureSessionPresetHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setFrameRateHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)frameRateHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)videoCaptureConnectionHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)updateTargetsForVideoCameraUsingCacheTextureAtWidthHeightTimeHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)processVideoSampleBufferHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)processAudioSampleBufferHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)convertYUVToRGBOutputHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)averageFrameDurationDuringCaptureHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)resetBenchmarkAverageHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)captureOutputDidoutputsamplebufferFromconnectionHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setAudioEncodingTargetHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)updateOrientationSendToTargetsHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setOutputImageOrientationHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)setHorizontallyMirrorFrontFacingCameraHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setHorizontallyMirrorRearFacingCameraHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
