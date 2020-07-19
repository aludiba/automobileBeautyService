#import "GPUImageVideoCamera.h"
#import "GPUImageStillCamera.h"
#import "GPUImageStillCamera+Bm.h"

@interface GPUImageStillCamera (BmBm)
+ (BOOL)initWithSessionPresetCamerapositionBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)removeInputsAndOutputsBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsSampleBufferWithCompletionHandlerBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithcompletionhandlerBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandlerBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandlerBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandlerBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithcompletionhandlerBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandlerBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoProcessedUpToFilterWithimageongpuhandlerBmBm:(NSInteger)BM;

@end
