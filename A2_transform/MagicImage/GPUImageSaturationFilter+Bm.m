#import "GPUImageSaturationFilter+Bm.h"
@implementation GPUImageSaturationFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setSaturationBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
