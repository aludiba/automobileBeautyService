#import "GPUImageFilterGroup.h"
#import "GPUImageGaussianSelectiveBlurFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageTwoInputFilter.h"

@interface GPUImageGaussianSelectiveBlurFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)setExcludeCirclePointHb:(NSInteger)hb;
+ (BOOL)setExcludeCircleRadiusHb:(NSInteger)hb;
+ (BOOL)setExcludeBlurSizeHb:(NSInteger)hb;
+ (BOOL)setAspectRatioHb:(NSInteger)hb;

@end
