#import "BMGPUImageAdaptiveThresholdFiltere+Bm.h"
@implementation BMGPUImageAdaptiveThresholdFiltere (Bm)
+ (BOOL)kinitBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)hSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)eblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
