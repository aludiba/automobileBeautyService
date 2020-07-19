#import "BMGPUImageBoxBlurFilterJ+BmHb.h"
@implementation BMGPUImageBoxBlurFilterJ (BmHb)
+ (BOOL)VVertexshaderforoptimizedblurofradiussigmabmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)gFragmentshaderforoptimizedblurofradiussigmabmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)WSetupfilterforsizebmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)GInitbmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)USetblurradiusinpixelsbmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
