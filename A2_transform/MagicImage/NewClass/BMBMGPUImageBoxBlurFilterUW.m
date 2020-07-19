#import "BMBMGPUImageBoxBlurFilterUW.h"
@implementation BMBMGPUImageBoxBlurFilterUW
+ (BOOL)TAvertexshaderforoptimizedblurofradiusssigma:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)aWfragmentshaderforoptimizedblurofradiusasigma:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)VFsetupfilterforsize:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)KFinit:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)YYsetblurradiusinpixels:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
