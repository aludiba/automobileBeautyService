#import "GPUImageFilterGroup.h"
#import "GPUImageGaussianSelectiveBlurFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianSelectiveBlurFilter+Hb.h"
#import "GPUImageGaussianSelectiveBlurFilter+HbHb.h"

@interface GPUImageGaussianSelectiveBlurFilter (HbHbHb)
+ (BOOL)initHbHbHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHbHbHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHbHbHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsHbHbHb:(NSInteger)hb;
+ (BOOL)setExcludeCirclePointHbHbHb:(NSInteger)hb;
+ (BOOL)setExcludeCircleRadiusHbHbHb:(NSInteger)hb;
+ (BOOL)setExcludeBlurSizeHbHbHb:(NSInteger)hb;
+ (BOOL)setAspectRatioHbHbHb:(NSInteger)hb;

@end
