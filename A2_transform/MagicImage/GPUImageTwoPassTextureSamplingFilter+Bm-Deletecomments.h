#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter+Bm.h"

@interface GPUImageTwoPassTextureSamplingFilter (Bm-Deletecomments)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setUniformsForProgramAtIndexBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupFilterForSizeBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setVerticalTexelSpacingBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setHorizontalTexelSpacingBm-Deletecomments:(NSInteger)-deleteComments;

@end
