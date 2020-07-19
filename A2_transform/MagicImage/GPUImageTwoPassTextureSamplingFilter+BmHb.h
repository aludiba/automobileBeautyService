#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter+Bm.h"

@interface GPUImageTwoPassTextureSamplingFilter (BmHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmHb:(NSInteger)hb;
+ (BOOL)setUniformsForProgramAtIndexBmHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeBmHb:(NSInteger)hb;
+ (BOOL)setVerticalTexelSpacingBmHb:(NSInteger)hb;
+ (BOOL)setHorizontalTexelSpacingBmHb:(NSInteger)hb;

@end
