#import "BMGPUImageAdaptiveThresholdFiltery.h"
@implementation BMGPUImageAdaptiveThresholdFiltery
+ (BOOL)Pinit:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)NSetblurradiusinpixels:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)DblurRadiusInPixels:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
