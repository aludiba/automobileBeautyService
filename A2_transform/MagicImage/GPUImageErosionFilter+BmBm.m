#import "GPUImageErosionFilter+BmBm.h"
@implementation GPUImageErosionFilter (BmBm)
+ (BOOL)initWithRadiusBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
