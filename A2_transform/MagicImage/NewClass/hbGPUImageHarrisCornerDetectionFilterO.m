#import "hbGPUImageHarrisCornerDetectionFilterO.h"
@implementation hbGPUImageHarrisCornerDetectionFilterO
+ (BOOL)Zinit:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)GInitwithcornerdetectionfragmentshader:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)ndealloc:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)kExtractcornerlocationsfromimageatframetime:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)twantsMonochromeInput:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)RSetblurradiusinpixels:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)vblurRadiusInPixels:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)uSetsensitivity:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)ZSetthreshold:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)kthreshold:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
