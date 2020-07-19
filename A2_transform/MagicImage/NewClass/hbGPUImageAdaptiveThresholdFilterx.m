#import "hbGPUImageAdaptiveThresholdFilterx.h"
@implementation hbGPUImageAdaptiveThresholdFilterx
+ (BOOL)Minit:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)USetblurradiusinpixels:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)gblurRadiusInPixels:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
