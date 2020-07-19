#import "GPUImageRGBErosionFilter+BmBm.h"
@implementation GPUImageRGBErosionFilter (BmBm)
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
