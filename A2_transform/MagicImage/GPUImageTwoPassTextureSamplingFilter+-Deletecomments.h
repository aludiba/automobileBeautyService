#import "GPUImageTwoPassFilter.h"
#import "GPUImageTwoPassTextureSamplingFilter.h"

@interface GPUImageTwoPassTextureSamplingFilter (-Deletecomments)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstring-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setUniformsForProgramAtIndex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupFilterForSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setVerticalTexelSpacing-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setHorizontalTexelSpacing-Deletecomments:(NSInteger)-deleteComments;

@end
