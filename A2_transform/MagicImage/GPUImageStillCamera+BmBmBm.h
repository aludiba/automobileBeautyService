#import "GPUImageVideoCamera.h"
#import "GPUImageStillCamera.h"
#import "GPUImageStillCamera+Bm.h"
#import "GPUImageStillCamera+BmBm.h"

@interface GPUImageStillCamera (BmBmBm)
+ (BOOL)initWithSessionPresetCamerapositionBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)removeInputsAndOutputsBmBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsSampleBufferWithCompletionHandlerBmBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithcompletionhandlerBmBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandlerBmBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandlerBmBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandlerBmBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithcompletionhandlerBmBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandlerBmBmBm:(NSInteger)BM;
+ (BOOL)capturePhotoProcessedUpToFilterWithimageongpuhandlerBmBmBm:(NSInteger)BM;

@end
