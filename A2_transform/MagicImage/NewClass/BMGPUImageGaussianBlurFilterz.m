#import "BMGPUImageGaussianBlurFilterz.h"
@implementation BMGPUImageGaussianBlurFilterz
+ (BOOL)MInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)zInitbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)zVertexshaderforstandardblurofradiussigmabm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)XFragmentshaderforstandardblurofradiussigmabm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)vVertexshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)aFragmentshaderforoptimizedblurofradiussigmabm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)LSetupfilterforsizebm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)ZRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)VSwitchtovertexshaderfragmentshaderbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)SSettexelspacingmultiplierbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)vSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)SSetblurradiusasfractionofimagewidthbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)nSetblurradiusasfractionofimageheightbm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
