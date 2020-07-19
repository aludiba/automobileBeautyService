#import "GPUImageRGBErosionFilter+Bm.h"
@implementation GPUImageRGBErosionFilter (Bm)
+ (BOOL)initWithRadiusBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
