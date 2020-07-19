#import "GPUImageErosionFilter+Bm.h"
@implementation GPUImageErosionFilter (Bm)
+ (BOOL)initWithRadiusBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
