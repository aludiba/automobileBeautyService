#import "GPUImageColorPackingFilter+BmBmBm.h"
@implementation GPUImageColorPackingFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)sizeOfFBOBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)outputFrameSizeBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
