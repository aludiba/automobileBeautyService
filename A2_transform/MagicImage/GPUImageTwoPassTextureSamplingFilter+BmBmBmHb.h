#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter+Bm.h"
#import "GPUImageTwoPassTextureSamplingFilter+BmBm.h"
#import "GPUImageTwoPassTextureSamplingFilter+BmBmBm.h"

@interface GPUImageTwoPassTextureSamplingFilter (BmBmBmHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBmBmHb:(NSInteger)hb;
+ (BOOL)setUniformsForProgramAtIndexBmBmBmHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeBmBmBmHb:(NSInteger)hb;
+ (BOOL)setVerticalTexelSpacingBmBmBmHb:(NSInteger)hb;
+ (BOOL)setHorizontalTexelSpacingBmBmBmHb:(NSInteger)hb;

@end
