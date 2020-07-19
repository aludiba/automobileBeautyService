#import "BMBMGPUImageCrosshatchFiltertx.h"
@implementation BMBMGPUImageCrosshatchFiltertx
+ (BOOL)VFinitbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)BMsetcrosshatchspacingbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)IHsetlinewidthbm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
