#import "GPUImageMotionBlurFilter+BmBm.h"
@implementation GPUImageMotionBlurFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)recalculateTexelOffsetsBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setBlurAngleBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setBlurSizeBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
