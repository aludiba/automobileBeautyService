#import "GPUImageErosionFilter+BmBmBm.h"
@implementation GPUImageErosionFilter (BmBmBm)
+ (BOOL)initWithRadiusBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
