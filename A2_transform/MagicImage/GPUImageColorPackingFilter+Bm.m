#import "GPUImageColorPackingFilter+Bm.h"
@implementation GPUImageColorPackingFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)sizeOfFBOBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)outputFrameSizeBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
