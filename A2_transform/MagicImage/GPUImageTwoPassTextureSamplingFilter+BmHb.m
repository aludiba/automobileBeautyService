#import "GPUImageTwoPassTextureSamplingFilter+BmHb.h"
@implementation GPUImageTwoPassTextureSamplingFilter (BmHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setupFilterForSizeBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setVerticalTexelSpacingBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setHorizontalTexelSpacingBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
