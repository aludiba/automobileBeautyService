#import "BMGPUImageBoxBlurFilterf+BmHb.h"
@implementation BMGPUImageBoxBlurFilterf (BmHb)
+ (BOOL)aVertexshaderforoptimizedblurofradiussigmabmbmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)TFragmentshaderforoptimizedblurofradiussigmabmbmBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)BSetupfilterforsizebmbmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)bInitbmbmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)TSetblurradiusinpixelsbmbmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
