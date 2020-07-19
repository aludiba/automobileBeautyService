#import "BMGPUImageAdaptiveThresholdFilterP.h"
@implementation BMGPUImageAdaptiveThresholdFilterP
+ (BOOL)TInitbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)pSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)oBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
