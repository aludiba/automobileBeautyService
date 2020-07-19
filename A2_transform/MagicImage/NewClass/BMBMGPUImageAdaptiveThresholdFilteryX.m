#import "BMBMGPUImageAdaptiveThresholdFilteryX.h"
@implementation BMBMGPUImageAdaptiveThresholdFilteryX
+ (BOOL)BPinit:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)XNsetblurradiusinpixels:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)VDblurradiusinpixels:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
