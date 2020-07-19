#import "BMGPUImageAdaptiveThresholdFiltery+BmHb.h"
@implementation BMGPUImageAdaptiveThresholdFiltery (BmHb)
+ (BOOL)PinitBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)NSetblurradiusinpixelsBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)DblurRadiusInPixelsBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
