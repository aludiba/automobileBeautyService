#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreMedia/CoreMedia.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import "GPUImageVideoCamera.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageFilter.h"

@interface GPUImageVideoCamera (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithSessionPresetCamerapositionHb:(NSInteger)hb;
+ (BOOL)framebufferForOutputHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)addAudioInputsAndOutputsHb:(NSInteger)hb;
+ (BOOL)removeAudioInputsAndOutputsHb:(NSInteger)hb;
+ (BOOL)removeInputsAndOutputsHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb;
+ (BOOL)startCameraCaptureHb:(NSInteger)hb;
+ (BOOL)stopCameraCaptureHb:(NSInteger)hb;
+ (BOOL)pauseCameraCaptureHb:(NSInteger)hb;
+ (BOOL)resumeCameraCaptureHb:(NSInteger)hb;
+ (BOOL)rotateCameraHb:(NSInteger)hb;
+ (BOOL)cameraPositionHb:(NSInteger)hb;
+ (BOOL)isBackFacingCameraPresentHb:(NSInteger)hb;
+ (BOOL)isBackFacingCameraPresentHb:(NSInteger)hb;
+ (BOOL)isFrontFacingCameraPresentHb:(NSInteger)hb;
+ (BOOL)isFrontFacingCameraPresentHb:(NSInteger)hb;
+ (BOOL)setCaptureSessionPresetHb:(NSInteger)hb;
+ (BOOL)setFrameRateHb:(NSInteger)hb;
+ (BOOL)frameRateHb:(NSInteger)hb;
+ (BOOL)videoCaptureConnectionHb:(NSInteger)hb;
+ (BOOL)updateTargetsForVideoCameraUsingCacheTextureAtWidthHeightTimeHb:(NSInteger)hb;
+ (BOOL)processVideoSampleBufferHb:(NSInteger)hb;
+ (BOOL)processAudioSampleBufferHb:(NSInteger)hb;
+ (BOOL)convertYUVToRGBOutputHb:(NSInteger)hb;
+ (BOOL)averageFrameDurationDuringCaptureHb:(NSInteger)hb;
+ (BOOL)resetBenchmarkAverageHb:(NSInteger)hb;
+ (BOOL)captureOutputDidoutputsamplebufferFromconnectionHb:(NSInteger)hb;
+ (BOOL)setAudioEncodingTargetHb:(NSInteger)hb;
+ (BOOL)updateOrientationSendToTargetsHb:(NSInteger)hb;
+ (BOOL)setOutputImageOrientationHb:(NSInteger)hb;
+ (BOOL)setHorizontallyMirrorFrontFacingCameraHb:(NSInteger)hb;
+ (BOOL)setHorizontallyMirrorRearFacingCameraHb:(NSInteger)hb;

@end
