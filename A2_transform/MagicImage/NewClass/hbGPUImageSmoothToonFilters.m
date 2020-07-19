#import "hbGPUImageSmoothToonFilters.h"
@implementation hbGPUImageSmoothToonFilters
+ (BOOL)rinit:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)uSetblurradiusinpixels:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)JblurRadiusInPixels:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)NSettexelwidth:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)TtexelWidth:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)ASettexelheight:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)CtexelHeight:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)hSetthreshold:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)Tthreshold:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)USetquantizationlevels:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)zquantizationLevels:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
