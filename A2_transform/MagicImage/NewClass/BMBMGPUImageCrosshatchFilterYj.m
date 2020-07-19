#import "BMBMGPUImageCrosshatchFilterYj.h"
@implementation BMBMGPUImageCrosshatchFilterYj
+ (BOOL)NRinitbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)ZEsetcrosshatchspacingbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)zPsetlinewidthbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
