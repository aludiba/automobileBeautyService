#import "GPUImageFilterGroup.h"
#import "GPUImageGaussianSelectiveBlurFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTwoInputFilter.h"
#import "GPUImageGaussianSelectiveBlurFilter+Hb.h"

@interface GPUImageGaussianSelectiveBlurFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHbHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHbHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsHbHb:(NSInteger)hb;
+ (BOOL)setExcludeCirclePointHbHb:(NSInteger)hb;
+ (BOOL)setExcludeCircleRadiusHbHb:(NSInteger)hb;
+ (BOOL)setExcludeBlurSizeHbHb:(NSInteger)hb;
+ (BOOL)setAspectRatioHbHb:(NSInteger)hb;

@end
