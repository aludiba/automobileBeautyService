#import "GPUImageVideoCamera.h"
#import "GPUImageStillCamera.h"
#import "GPUImageStillCamera+Hb.h"

@interface GPUImageStillCamera (HbHb)
+ (BOOL)initWithSessionPresetCamerapositionHbHb:(NSInteger)hb;
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)removeInputsAndOutputsHbHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsSampleBufferWithCompletionHandlerHbHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithcompletionhandlerHbHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandlerHbHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandlerHbHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandlerHbHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithcompletionhandlerHbHb:(NSInteger)hb;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandlerHbHb:(NSInteger)hb;
+ (BOOL)capturePhotoProcessedUpToFilterWithimageongpuhandlerHbHb:(NSInteger)hb;

@end
