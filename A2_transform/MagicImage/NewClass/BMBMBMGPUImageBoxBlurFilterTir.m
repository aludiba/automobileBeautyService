#import "BMBMBMGPUImageBoxBlurFilterTir.h"
@implementation BMBMBMGPUImageBoxBlurFilterTir
+ (BOOL)MFdvertexshaderforoptimizedblurofradiusgsigma:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)WStfragmentshaderforoptimizedblurofradiusqsigma:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)gVosetupfilterforsize:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)cIyinit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)bKisetblurradiusinpixels:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
