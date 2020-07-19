#import "GPUImageTextureOutput+BmBm.h"
@implementation GPUImageTextureOutput (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)doneWithTextureBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)nextAvailableTextureIndexBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setInputFramebufferAtindexBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)maximumOutputSizeBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)endProcessingBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)shouldIgnoreUpdatesToThisTargetBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)wantsMonochromeInputBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setCurrentlyReceivingMonochromeInputBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
