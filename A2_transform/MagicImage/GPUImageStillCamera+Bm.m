#import "GPUImageStillCamera+Bm.h"
@implementation GPUImageStillCamera (Bm)
+ (BOOL)initWithSessionPresetCamerapositionBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)removeInputsAndOutputsBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)capturePhotoAsSampleBufferWithCompletionHandlerBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithcompletionhandlerBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandlerBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandlerBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandlerBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithcompletionhandlerBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandlerBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)capturePhotoProcessedUpToFilterWithimageongpuhandlerBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
