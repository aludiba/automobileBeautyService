#import "hbGPUImageCrosshairGeneratorl.h"
@implementation hbGPUImageCrosshairGeneratorl
+ (BOOL)linit:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)YRendercrosshairsfromarrayICountKFrametime:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)hRendertotexturewithverticesLTexturecoordinates:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)uSetcrosshairwidth:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)jSetcrosshaircolorredaGreenTBlue:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
