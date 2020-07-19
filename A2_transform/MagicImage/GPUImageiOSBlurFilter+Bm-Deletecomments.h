#import "GPUImageFilterGroup.h"
#import "GPUImageiOSBlurFilter.h"
#import "GPUImageSaturationFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageLuminanceRangeFilter.h"
#import "GPUImageiOSBlurFilter+Bm.h"

@interface GPUImageiOSBlurFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInputSizeAtindexBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixelsBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setSaturationBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)saturationBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setDownsamplingBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setRangeReductionFactorBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)rangeReductionFactorBm-Deletecomments:(NSInteger)-deleteComments;

@end
