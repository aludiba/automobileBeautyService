#import "GPUImageMotionBlurFilter+BmBmBm.h"
@implementation GPUImageMotionBlurFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)recalculateTexelOffsetsBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setInputRotationAtindexBmBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setBlurAngleBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setBlurSizeBmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
