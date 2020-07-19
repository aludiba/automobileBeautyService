#import "hbBMGPUImageBoxBlurFilterJs.h"
@implementation hbBMGPUImageBoxBlurFilterJs
+ (BOOL)EVvertexshaderforoptimizedblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)dGfragmentshaderforoptimizedblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)uWsetupfilterforsizebmbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)WGinitbmbm:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)YUsetblurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
