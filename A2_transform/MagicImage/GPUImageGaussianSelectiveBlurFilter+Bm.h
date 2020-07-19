#import "GPUImageFilterGroup.h"
#import "GPUImageGaussianSelectiveBlurFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTwoInputFilter.h"

@interface GPUImageGaussianSelectiveBlurFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)setExcludeCirclePointBm:(NSInteger)BM;
+ (BOOL)setExcludeCircleRadiusBm:(NSInteger)BM;
+ (BOOL)setExcludeBlurSizeBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBm:(NSInteger)BM;

@end
