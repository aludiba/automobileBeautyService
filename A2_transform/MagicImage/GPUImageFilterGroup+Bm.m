#import "GPUImageFilterGroup+Bm.h"
@implementation GPUImageFilterGroup (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)addFilterBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)filterAtIndexBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)filterCountBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)useNextFrameForImageCaptureBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)newCGImageFromCurrentlyProcessedOutputBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setTargetToIgnoreForUpdatesBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)addTargetAttexturelocationBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)removeTargetBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)removeAllTargetsBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)targetsBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setFrameProcessingCompletionBlockBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)(GPUImageOutput *, CMTime))frameProcessingCompletionBlockBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setInputFramebufferAtindexBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)nextAvailableTextureIndexBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)maximumOutputSizeBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)endProcessingBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setCurrentlyReceivingMonochromeInputBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
