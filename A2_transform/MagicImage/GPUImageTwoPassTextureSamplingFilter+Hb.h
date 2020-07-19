#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter.h"

@interface GPUImageTwoPassTextureSamplingFilter (Hb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHb:(NSInteger)hb;
+ (BOOL)setUniformsForProgramAtIndexHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)setVerticalTexelSpacingHb:(NSInteger)hb;
+ (BOOL)setHorizontalTexelSpacingHb:(NSInteger)hb;

@end
