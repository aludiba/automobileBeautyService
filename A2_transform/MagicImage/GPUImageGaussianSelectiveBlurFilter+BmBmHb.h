#import "GPUImageFilterGroup.h"
#import "GPUImageGaussianSelectiveBlurFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianSelectiveBlurFilter+Bm.h"
#import "GPUImageGaussianSelectiveBlurFilter+BmBm.h"

@interface GPUImageGaussianSelectiveBlurFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmBmHb:(NSInteger)hb;
+ (BOOL)setExcludeCirclePointBmBmHb:(NSInteger)hb;
+ (BOOL)setExcludeCircleRadiusBmBmHb:(NSInteger)hb;
+ (BOOL)setExcludeBlurSizeBmBmHb:(NSInteger)hb;
+ (BOOL)setAspectRatioBmBmHb:(NSInteger)hb;

@end
