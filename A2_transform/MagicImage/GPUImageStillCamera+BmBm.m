#import "GPUImageStillCamera+BmBm.h"
@implementation GPUImageStillCamera (BmBm)
+ (BOOL)initWithSessionPresetCamerapositionBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)removeInputsAndOutputsBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)capturePhotoAsSampleBufferWithCompletionHandlerBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithcompletionhandlerBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandlerBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandlerBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandlerBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithcompletionhandlerBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandlerBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)capturePhotoProcessedUpToFilterWithimageongpuhandlerBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
