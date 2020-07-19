#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBoxBlurFilter.h"

@interface GPUImageBoxBlurFilter (-Deletecomments)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigma-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigma-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupFilterForSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments;

@end
