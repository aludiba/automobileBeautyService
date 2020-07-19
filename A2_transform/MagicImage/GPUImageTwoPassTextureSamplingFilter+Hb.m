#import "GPUImageTwoPassTextureSamplingFilter+Hb.h"
@implementation GPUImageTwoPassTextureSamplingFilter (Hb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)setVerticalTexelSpacingHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setHorizontalTexelSpacingHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
