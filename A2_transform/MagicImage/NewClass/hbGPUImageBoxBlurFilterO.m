#import "hbGPUImageBoxBlurFilterO.h"
@implementation hbGPUImageBoxBlurFilterO
+ (BOOL)oVertexshaderforoptimizedblurofradiusLSigma:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)HFragmentshaderforoptimizedblurofradiuswSigma:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)gSetupfilterforsize:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)Kinit:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)PSetblurradiusinpixels:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
