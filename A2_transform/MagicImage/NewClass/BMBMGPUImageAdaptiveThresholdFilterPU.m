#import "BMBMGPUImageAdaptiveThresholdFilterPU.h"
@implementation BMBMGPUImageAdaptiveThresholdFilterPU
+ (BOOL)yTinitbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)EPsetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)oOblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
