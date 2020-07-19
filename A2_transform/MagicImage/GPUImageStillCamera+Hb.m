#import "GPUImageStillCamera+Hb.h"
@implementation GPUImageStillCamera (Hb)
+ (BOOL)initWithSessionPresetCamerapositionHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)removeInputsAndOutputsHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)capturePhotoAsSampleBufferWithCompletionHandlerHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithcompletionhandlerHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)capturePhotoAsImageProcessedUpToFilterWithorientationWithcompletionhandlerHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithcompletionhandlerHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)capturePhotoAsJPEGProcessedUpToFilterWithorientationWithcompletionhandlerHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithcompletionhandlerHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)capturePhotoAsPNGProcessedUpToFilterWithorientationWithcompletionhandlerHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)capturePhotoProcessedUpToFilterWithimageongpuhandlerHb:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
