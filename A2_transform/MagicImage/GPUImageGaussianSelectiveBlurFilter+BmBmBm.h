#import "GPUImageFilterGroup.h"
#import "GPUImageGaussianSelectiveBlurFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianSelectiveBlurFilter+Bm.h"
#import "GPUImageGaussianSelectiveBlurFilter+BmBm.h"

@interface GPUImageGaussianSelectiveBlurFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)setExcludeCirclePointBmBmBm:(NSInteger)BM;
+ (BOOL)setExcludeCircleRadiusBmBmBm:(NSInteger)BM;
+ (BOOL)setExcludeBlurSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBmBmBm:(NSInteger)BM;

@end
