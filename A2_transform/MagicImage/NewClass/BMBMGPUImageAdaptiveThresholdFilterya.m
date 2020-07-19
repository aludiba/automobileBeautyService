#import "BMBMGPUImageAdaptiveThresholdFilterya.h"
@implementation BMBMGPUImageAdaptiveThresholdFilterya
+ (BOOL)HPinit:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)gNsetblurradiusinpixels:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)KDblurradiusinpixels:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
