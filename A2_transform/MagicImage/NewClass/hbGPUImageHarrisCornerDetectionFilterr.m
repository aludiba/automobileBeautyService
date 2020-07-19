#import "hbGPUImageHarrisCornerDetectionFilterr.h"
@implementation hbGPUImageHarrisCornerDetectionFilterr
+ (BOOL)Qinit:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)hInitwithcornerdetectionfragmentshader:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)Zdealloc:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)QExtractcornerlocationsfromimageatframetime:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)NwantsMonochromeInput:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)sSetblurradiusinpixels:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)FblurRadiusInPixels:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)FSetsensitivity:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)MSetthreshold:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)Dthreshold:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
