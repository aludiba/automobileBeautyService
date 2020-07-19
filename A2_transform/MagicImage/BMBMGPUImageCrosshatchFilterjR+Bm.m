#import "BMBMGPUImageCrosshatchFilterjR+Bm.h"
@implementation BMBMGPUImageCrosshatchFilterjR (Bm)
+ (BOOL)oFinitBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)nIsetcrosshatchspacingBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)hOsetlinewidthBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
