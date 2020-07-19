#import "hbGPUImageCannyEdgeDetectionFiltere.h"
@implementation hbGPUImageCannyEdgeDetectionFiltere
+ (BOOL)Tinit:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)vSetblurradiusinpixels:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)LblurRadiusInPixels:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)YSetblurtexelspacingmultiplier:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)iblurTexelSpacingMultiplier:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)OSettexelwidth:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)wtexelWidth:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)USettexelheight:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)ZtexelHeight:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)jSetupperthreshold:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)TupperThreshold:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)lSetlowerthreshold:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)qlowerThreshold:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
