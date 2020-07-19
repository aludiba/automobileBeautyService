#import "GPUImageGaussianBlurPositionFilter+Hb.h"
@implementation GPUImageGaussianBlurPositionFilter (Hb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setBlurSizeHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setBlurCenterHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setBlurRadiusHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setAspectRatioHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
