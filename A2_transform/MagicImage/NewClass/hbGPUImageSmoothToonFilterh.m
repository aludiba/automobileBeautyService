#import "hbGPUImageSmoothToonFilterh.h"
@implementation hbGPUImageSmoothToonFilterh
+ (BOOL)Dinit:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)KSetblurradiusinpixels:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)wblurRadiusInPixels:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)oSettexelwidth:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)ztexelWidth:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)KSettexelheight:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)WtexelHeight:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)xSetthreshold:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)Nthreshold:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)oSetquantizationlevels:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)YquantizationLevels:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
