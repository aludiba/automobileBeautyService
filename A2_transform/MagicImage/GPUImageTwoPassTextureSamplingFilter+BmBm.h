#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter+Bm.h"

@interface GPUImageTwoPassTextureSamplingFilter (BmBm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm:(NSInteger)BM;
+ (BOOL)setUniformsForProgramAtIndexBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM;
+ (BOOL)setVerticalTexelSpacingBmBm:(NSInteger)BM;
+ (BOOL)setHorizontalTexelSpacingBmBm:(NSInteger)BM;

@end
