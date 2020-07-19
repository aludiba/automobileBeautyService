#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreMedia/CoreMedia.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import "GPUImageVideoCamera.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageFilter.h"
#import "GPUImageVideoCamera+Hb.h"

@interface GPUImageVideoCamera (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)initWithSessionPresetCamerapositionHbHb:(NSInteger)hb;
+ (BOOL)framebufferForOutputHbHb:(NSInteger)hb;
+ (BOOL)deallocHbHb:(NSInteger)hb;
+ (BOOL)addAudioInputsAndOutputsHbHb:(NSInteger)hb;
+ (BOOL)removeAudioInputsAndOutputsHbHb:(NSInteger)hb;
+ (BOOL)removeInputsAndOutputsHbHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationHbHb:(NSInteger)hb;
+ (BOOL)startCameraCaptureHbHb:(NSInteger)hb;
+ (BOOL)stopCameraCaptureHbHb:(NSInteger)hb;
+ (BOOL)pauseCameraCaptureHbHb:(NSInteger)hb;
+ (BOOL)resumeCameraCaptureHbHb:(NSInteger)hb;
+ (BOOL)rotateCameraHbHb:(NSInteger)hb;
+ (BOOL)cameraPositionHbHb:(NSInteger)hb;
+ (BOOL)isBackFacingCameraPresentHbHb:(NSInteger)hb;
+ (BOOL)isBackFacingCameraPresentHbHb:(NSInteger)hb;
+ (BOOL)isFrontFacingCameraPresentHbHb:(NSInteger)hb;
+ (BOOL)isFrontFacingCameraPresentHbHb:(NSInteger)hb;
+ (BOOL)setCaptureSessionPresetHbHb:(NSInteger)hb;
+ (BOOL)setFrameRateHbHb:(NSInteger)hb;
+ (BOOL)frameRateHbHb:(NSInteger)hb;
+ (BOOL)videoCaptureConnectionHbHb:(NSInteger)hb;
+ (BOOL)updateTargetsForVideoCameraUsingCacheTextureAtWidthHeightTimeHbHb:(NSInteger)hb;
+ (BOOL)processVideoSampleBufferHbHb:(NSInteger)hb;
+ (BOOL)processAudioSampleBufferHbHb:(NSInteger)hb;
+ (BOOL)convertYUVToRGBOutputHbHb:(NSInteger)hb;
+ (BOOL)averageFrameDurationDuringCaptureHbHb:(NSInteger)hb;
+ (BOOL)resetBenchmarkAverageHbHb:(NSInteger)hb;
+ (BOOL)captureOutputDidoutputsamplebufferFromconnectionHbHb:(NSInteger)hb;
+ (BOOL)setAudioEncodingTargetHbHb:(NSInteger)hb;
+ (BOOL)updateOrientationSendToTargetsHbHb:(NSInteger)hb;
+ (BOOL)setOutputImageOrientationHbHb:(NSInteger)hb;
+ (BOOL)setHorizontallyMirrorFrontFacingCameraHbHb:(NSInteger)hb;
+ (BOOL)setHorizontallyMirrorRearFacingCameraHbHb:(NSInteger)hb;

@end
