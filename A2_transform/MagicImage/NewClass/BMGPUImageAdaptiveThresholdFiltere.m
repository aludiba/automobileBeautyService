#import "BMGPUImageAdaptiveThresholdFiltere.h"
@implementation BMGPUImageAdaptiveThresholdFiltere
+ (BOOL)kinit:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)hSetblurradiusinpixels:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)eblurRadiusInPixels:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
