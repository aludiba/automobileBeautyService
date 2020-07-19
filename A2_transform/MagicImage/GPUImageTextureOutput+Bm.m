#import "GPUImageTextureOutput+Bm.h"
@implementation GPUImageTextureOutput (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)doneWithTextureBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)nextAvailableTextureIndexBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setInputFramebufferAtindexBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)maximumOutputSizeBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)endProcessingBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)shouldIgnoreUpdatesToThisTargetBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setCurrentlyReceivingMonochromeInputBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
