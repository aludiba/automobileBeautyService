#import "GPUImageFilterGroup+BmBm.h"
@implementation GPUImageFilterGroup (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)addFilterBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)filterAtIndexBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)filterCountBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)useNextFrameForImageCaptureBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)newCGImageFromCurrentlyProcessedOutputBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setTargetToIgnoreForUpdatesBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)addTargetAttexturelocationBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)removeTargetBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)removeAllTargetsBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)targetsBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setFrameProcessingCompletionBlockBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)frameProcessingCompletionBlockBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setInputFramebufferAtindexBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)nextAvailableTextureIndexBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)forceProcessingAtSizeRespectingAspectRatioBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)maximumOutputSizeBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)endProcessingBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)wantsMonochromeInputBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setCurrentlyReceivingMonochromeInputBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
