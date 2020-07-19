#import "hbBMGPUImageBoxBlurFilterTG.h"
@implementation hbBMGPUImageBoxBlurFilterTG
+ (BOOL)ODvertexshaderforoptimizedblurofradiusgsigmabmbm:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)OTfragmentshaderforoptimizedblurofradiusqsigmabmbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)cOsetupfilterforsizebmbm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)nYinitbmbm:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)QIsetblurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
