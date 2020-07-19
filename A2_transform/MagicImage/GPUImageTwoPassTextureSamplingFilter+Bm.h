#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter.h"

@interface GPUImageTwoPassTextureSamplingFilter (Bm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:(NSInteger)BM;
+ (BOOL)setUniformsForProgramAtIndexBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)setVerticalTexelSpacingBm:(NSInteger)BM;
+ (BOOL)setHorizontalTexelSpacingBm:(NSInteger)BM;

@end
