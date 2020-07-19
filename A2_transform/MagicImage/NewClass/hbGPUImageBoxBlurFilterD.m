#import "hbGPUImageBoxBlurFilterD.h"
@implementation hbGPUImageBoxBlurFilterD
+ (BOOL)xVertexshaderforoptimizedblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)kFragmentshaderforoptimizedblurofradiussigmabmbm:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)mSetupfilterforsizebmbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)ZInitbmbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)ASetblurradiusinpixelsbmbm:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
