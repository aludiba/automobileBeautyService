#import "BMBMGPUImageCrosshatchFiltertV.h"
@implementation BMBMGPUImageCrosshatchFiltertV
+ (BOOL)IFinitbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)OMsetcrosshatchspacingbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)DHsetlinewidthbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
