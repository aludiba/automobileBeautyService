#import "GPUImageColorPackingFilter+BmBm.h"
@implementation GPUImageColorPackingFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sizeOfFBOBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)outputFrameSizeBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
