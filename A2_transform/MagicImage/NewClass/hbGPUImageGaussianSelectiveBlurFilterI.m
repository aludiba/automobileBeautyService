#import "hbGPUImageGaussianSelectiveBlurFilterI.h"
@implementation hbGPUImageGaussianSelectiveBlurFilterI
+ (BOOL)Kinit:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)CSetinputsizeKAtindex:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)BSetblurradiusinpixels:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)RblurRadiusInPixels:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)cSetexcludecirclepoint:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)RSetexcludecircleradius:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)GSetexcludeblursize:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)uSetaspectratio:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
