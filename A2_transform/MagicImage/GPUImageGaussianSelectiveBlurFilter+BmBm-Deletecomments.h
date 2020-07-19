#import "GPUImageFilterGroup.h"
#import "GPUImageGaussianSelectiveBlurFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianSelectiveBlurFilter+Bm.h"
#import "GPUImageGaussianSelectiveBlurFilter+BmBm.h"

@interface GPUImageGaussianSelectiveBlurFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInputSizeAtindexBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setExcludeCirclePointBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setExcludeCircleRadiusBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setExcludeBlurSizeBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setAspectRatioBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
