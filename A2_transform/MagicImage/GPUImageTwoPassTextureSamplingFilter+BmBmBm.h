#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter+Bm.h"
#import "GPUImageTwoPassTextureSamplingFilter+BmBm.h"

@interface GPUImageTwoPassTextureSamplingFilter (BmBmBm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBmBm:(NSInteger)BM;
+ (BOOL)setUniformsForProgramAtIndexBmBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setVerticalTexelSpacingBmBmBm:(NSInteger)BM;
+ (BOOL)setHorizontalTexelSpacingBmBmBm:(NSInteger)BM;

@end
