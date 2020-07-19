#import "GPUImageTwoPassTextureSamplingFilter+Bm.h"
@implementation GPUImageTwoPassTextureSamplingFilter (Bm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setVerticalTexelSpacingBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setHorizontalTexelSpacingBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
