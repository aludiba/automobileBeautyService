#import "GPUImageTwoPassTextureSamplingFilter+-Deletecomments.h"
@implementation GPUImageTwoPassTextureSamplingFilter (-Deletecomments)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstring-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)setUniformsForProgramAtIndex-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)setupFilterForSize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)setVerticalTexelSpacing-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)setHorizontalTexelSpacing-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}

@end
