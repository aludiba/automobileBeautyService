#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageBoxBlurFilter.h"
#import "GPUImageBoxBlurFilter+Bm.h"
#import "GPUImageBoxBlurFilter+BmBm.h"

@interface GPUImageBoxBlurFilter (BmBm-Deletecomments)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupFilterForSizeBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
