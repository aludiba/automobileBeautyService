#import "BMGPUImageAdaptiveThresholdFiltery+BmBm.h"
@implementation BMGPUImageAdaptiveThresholdFiltery (BmBm)
+ (BOOL)PinitBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)NSetblurradiusinpixelsBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)DblurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
