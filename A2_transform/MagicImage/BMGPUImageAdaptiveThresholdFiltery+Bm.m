#import "BMGPUImageAdaptiveThresholdFiltery+Bm.h"
@implementation BMGPUImageAdaptiveThresholdFiltery (Bm)
+ (BOOL)PinitBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)NSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)DblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
