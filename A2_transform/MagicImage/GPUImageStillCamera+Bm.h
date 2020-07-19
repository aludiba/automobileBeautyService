#import "GPUImageVideoCamera.h"
#import "GPUImageStillCamera.h"

@interface GPUImageStillCamera (Bm)
+ (BOOL)initWithSessionPresetCamerapositionBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)removeInputsAndOutputsBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsSampleBufferWithCompletionHandlerBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithcompletionhandlerBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandlerBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandlerBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandlerBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithcompletionhandlerBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandlerBm:(NSInteger)BM;
+ (BOOL)capturePhotoProcessedUpToFilterWithimageongpuhandlerBm:(NSInteger)BM;

@end
