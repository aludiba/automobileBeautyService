#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter+Bm.h"
#import "GPUImageTwoPassTextureSamplingFilter+BmBm.h"
#import "GPUImageTwoPassTextureSamplingFilter+BmBmBm.h"

@interface GPUImageTwoPassTextureSamplingFilter (BmBmBm-Deletecomments)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setUniformsForProgramAtIndexBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupFilterForSizeBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setVerticalTexelSpacingBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setHorizontalTexelSpacingBmBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
