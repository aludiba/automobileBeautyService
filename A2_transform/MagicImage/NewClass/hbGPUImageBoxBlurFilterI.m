#import "hbGPUImageBoxBlurFilterI.h"
@implementation hbGPUImageBoxBlurFilterI
+ (BOOL)JVertexshaderforoptimizedblurofradiusvSigma:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)AFragmentshaderforoptimizedblurofradiusoSigma:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)hSetupfilterforsize:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)Vinit:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)hSetblurradiusinpixels:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
