#import "BMGPUImageCrosshatchFilterA+Bm.h"
@implementation BMGPUImageCrosshatchFilterA (Bm)
+ (BOOL)XinitBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)LSetcrosshatchspacingBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)LSetlinewidthBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
