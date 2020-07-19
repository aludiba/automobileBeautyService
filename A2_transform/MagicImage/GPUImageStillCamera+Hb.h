#import "GPUImageVideoCamera.h"
#import "GPUImageStillCamera.h"

@interface GPUImageStillCamera (Hb)
+ (BOOL)initWithSessionPresetCamerapositionHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)removeInputsAndOutputsHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsSampleBufferWithCompletionHandlerHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithcompletionhandlerHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandlerHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandlerHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandlerHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithcompletionhandlerHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandlerHb:(NSInteger)hb;
+ (BOOL)capturePhotoProcessedUpToFilterWithimageongpuhandlerHb:(NSInteger)hb;

@end
