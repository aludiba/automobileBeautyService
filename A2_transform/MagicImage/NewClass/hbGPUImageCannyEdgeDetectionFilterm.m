#import "hbGPUImageCannyEdgeDetectionFilterm.h"
@implementation hbGPUImageCannyEdgeDetectionFilterm
+ (BOOL)Vinit:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)MSetblurradiusinpixels:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)NblurRadiusInPixels:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)DSetblurtexelspacingmultiplier:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)YblurTexelSpacingMultiplier:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)XSettexelwidth:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)gtexelWidth:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)gSettexelheight:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)VtexelHeight:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)VSetupperthreshold:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)wupperThreshold:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)mSetlowerthreshold:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)plowerThreshold:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
