#import "hbGPUImageUnsharpMaskFilterN.h"
@implementation hbGPUImageUnsharpMaskFilterN
+ (BOOL)ginit:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)USetblurradiusinpixels:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)ublurRadiusInPixels:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)ESetintensity:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
