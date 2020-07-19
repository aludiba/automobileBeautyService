#import "GPUImageTwoPassFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"

@interface GPUImageSobelEdgeDetectionFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithFragmentShaderFromString-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupFilterForSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setUniformsForProgramAtIndex-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)wantsMonochromeInput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)providesMonochromeOutput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTexelWidth-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTexelHeight-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setEdgeStrength-Deletecomments:(NSInteger)-deleteComments;

@end
