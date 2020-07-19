#import "BMGPUImageGaussianSelectiveBlurFilterg.h"
@implementation BMGPUImageGaussianSelectiveBlurFilterg
+ (BOOL)yinit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)sSetinputsizeEAtindex:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)gSetblurradiusinpixels:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)LblurRadiusInPixels:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)VSetexcludecirclepoint:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)mSetexcludecircleradius:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)VSetexcludeblursize:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)WSetaspectratio:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
