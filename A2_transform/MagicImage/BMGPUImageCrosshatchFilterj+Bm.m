#import "BMGPUImageCrosshatchFilterj+Bm.h"
@implementation BMGPUImageCrosshatchFilterj (Bm)
+ (BOOL)FinitBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)iSetcrosshatchspacingBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)oSetlinewidthBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
