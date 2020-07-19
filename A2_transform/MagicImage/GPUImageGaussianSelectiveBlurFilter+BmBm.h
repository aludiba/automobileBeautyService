#import "GPUImageFilterGroup.h"
#import "GPUImageGaussianSelectiveBlurFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianSelectiveBlurFilter+Bm.h"

@interface GPUImageGaussianSelectiveBlurFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)setExcludeCirclePointBmBm:(NSInteger)BM;
+ (BOOL)setExcludeCircleRadiusBmBm:(NSInteger)BM;
+ (BOOL)setExcludeBlurSizeBmBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM;

@end
