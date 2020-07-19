#import "GPUImageMotionBlurFilter+Bm.h"
@implementation GPUImageMotionBlurFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)recalculateTexelOffsetsBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setBlurAngleBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setBlurSizeBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
