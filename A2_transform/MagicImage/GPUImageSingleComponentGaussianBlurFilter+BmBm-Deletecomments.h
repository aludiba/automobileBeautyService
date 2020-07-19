#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter+Bm.h"
#import "GPUImageSingleComponentGaussianBlurFilter+BmBm.h"

@interface GPUImageSingleComponentGaussianBlurFilter (BmBm-Deletecomments)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
