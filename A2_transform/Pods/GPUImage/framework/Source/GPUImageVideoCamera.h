#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreMedia/CoreMedia.h>
#import "GPUImageContext.h"
#import "GPUImageOutput.h"
extern const GLfloat kColorConversion601[];
extern const GLfloat kColorConversion601FullRange[];
extern const GLfloat kColorConversion709[];
extern NSString *const kGPUImageYUVVideoRangeConversionForRGFragmentShaderString;
extern NSString *const kGPUImageYUVFullRangeConversionForLAFragmentShaderString;
extern NSString *const kGPUImageYUVVideoRangeConversionForLAFragmentShaderString;
@protocol GPUImageVideoCameraDelegate <NSObject>
@optional
- (void)willOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer;
@end
@interface GPUImageVideoCamera : GPUImageOutput <AVCaptureVideoDataOutputSampleBufferDelegate, AVCaptureAudioDataOutputSampleBufferDelegate>
{
    NSUInteger numberOfFramesCaptured;
    CGFloat totalFrameTimeDuringCapture;
    AVCaptureSession *_captureSession;
    AVCaptureDevice *_inputCamera;
    AVCaptureDevice *_microphone;
    AVCaptureDeviceInput *videoInput;
	AVCaptureVideoDataOutput *videoOutput;
    BOOL capturePaused;
    GPUImageRotationMode outputRotation, internalRotation;
    dispatch_semaphore_t frameRenderingSemaphore;
    BOOL captureAsYUV;
    GLuint luminanceTexture, chrominanceTexture;
    __unsafe_unretained id<GPUImageVideoCameraDelegate> _delegate;
}
@property(readonly, retain, nonatomic) AVCaptureSession *captureSession;
@property (readwrite, nonatomic, copy) NSString *captureSessionPreset;
@property (readwrite) int32_t frameRate;
@property (readonly, getter = isFrontFacingCameraPresent) BOOL frontFacingCameraPresent;
@property (readonly, getter = isBackFacingCameraPresent) BOOL backFacingCameraPresent;
@property(readwrite, nonatomic) BOOL runBenchmark;
@property(readonly) AVCaptureDevice *inputCamera;
@property(readwrite, nonatomic) UIInterfaceOrientation outputImageOrientation;
@property(readwrite, nonatomic) BOOL horizontallyMirrorFrontFacingCamera, horizontallyMirrorRearFacingCamera;
@property(nonatomic, assign) id<GPUImageVideoCameraDelegate> delegate;
- (id)initWithSessionPreset:(NSString *)sessionPreset cameraPosition:(AVCaptureDevicePosition)cameraPosition;
- (BOOL)addAudioInputsAndOutputs;
- (BOOL)removeAudioInputsAndOutputs;
- (void)removeInputsAndOutputs;
- (void)startCameraCapture;
- (void)stopCameraCapture;
- (void)pauseCameraCapture;
- (void)resumeCameraCapture;
- (void)processVideoSampleBuffer:(CMSampleBufferRef)sampleBuffer;
- (void)processAudioSampleBuffer:(CMSampleBufferRef)sampleBuffer;
- (AVCaptureDevicePosition)cameraPosition;
- (AVCaptureConnection *)videoCaptureConnection;
- (void)rotateCamera;
- (CGFloat)averageFrameDurationDuringCapture;
- (void)resetBenchmarkAverage;
+ (BOOL)isBackFacingCameraPresent;
+ (BOOL)isFrontFacingCameraPresent;
@end
