#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreMedia/CoreMedia.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
#import "GPUImageVideoCamera.h"
#import "GPUImageMovieWriter.h"
#import "GPUImageFilter.h"

@interface GPUImageVideoCamera (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithSessionPresetCamerapositionBm:(NSInteger)BM;
+ (BOOL)framebufferForOutputBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)addAudioInputsAndOutputsBm:(NSInteger)BM;
+ (BOOL)removeAudioInputsAndOutputsBm:(NSInteger)BM;
+ (BOOL)removeInputsAndOutputsBm:(NSInteger)BM;
+ (BOOL)addTargetAttexturelocationBm:(NSInteger)BM;
+ (BOOL)startCameraCaptureBm:(NSInteger)BM;
+ (BOOL)stopCameraCaptureBm:(NSInteger)BM;
+ (BOOL)pauseCameraCaptureBm:(NSInteger)BM;
+ (BOOL)resumeCameraCaptureBm:(NSInteger)BM;
+ (BOOL)rotateCameraBm:(NSInteger)BM;
+ (BOOL)cameraPositionBm:(NSInteger)BM;
+ (BOOL)isBackFacingCameraPresentBm:(NSInteger)BM;
+ (BOOL)isBackFacingCameraPresentBm:(NSInteger)BM;
+ (BOOL)isFrontFacingCameraPresentBm:(NSInteger)BM;
+ (BOOL)isFrontFacingCameraPresentBm:(NSInteger)BM;
+ (BOOL)setCaptureSessionPresetBm:(NSInteger)BM;
+ (BOOL)setFrameRateBm:(NSInteger)BM;
+ (BOOL)frameRateBm:(NSInteger)BM;
+ (BOOL)videoCaptureConnectionBm:(NSInteger)BM;
+ (BOOL)updateTargetsForVideoCameraUsingCacheTextureAtWidthHeightTimeBm:(NSInteger)BM;
+ (BOOL)processVideoSampleBufferBm:(NSInteger)BM;
+ (BOOL)processAudioSampleBufferBm:(NSInteger)BM;
+ (BOOL)convertYUVToRGBOutputBm:(NSInteger)BM;
+ (BOOL)averageFrameDurationDuringCaptureBm:(NSInteger)BM;
+ (BOOL)resetBenchmarkAverageBm:(NSInteger)BM;
+ (BOOL)captureOutputDidoutputsamplebufferFromconnectionBm:(NSInteger)BM;
+ (BOOL)setAudioEncodingTargetBm:(NSInteger)BM;
+ (BOOL)updateOrientationSendToTargetsBm:(NSInteger)BM;
+ (BOOL)setOutputImageOrientationBm:(NSInteger)BM;
+ (BOOL)setHorizontallyMirrorFrontFacingCameraBm:(NSInteger)BM;
+ (BOOL)setHorizontallyMirrorRearFacingCameraBm:(NSInteger)BM;

@end
