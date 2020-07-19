#import "BMGPUImageBoxBlurFilterT+BmHb.h"
@implementation BMGPUImageBoxBlurFilterT (BmHb)
+ (BOOL)DVertexshaderforoptimizedblurofradiusgSigmaBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)TFragmentshaderforoptimizedblurofradiusQSigmaBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)oSetupfilterforsizeBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)YinitBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)ISetblurradiusinpixelsBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
