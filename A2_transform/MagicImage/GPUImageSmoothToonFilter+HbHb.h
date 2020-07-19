#import "GPUImageFilterGroup.h"
#import "GPUImageSmoothToonFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageToonFilter.h"
#import "GPUImageSmoothToonFilter+Hb.h"

@interface GPUImageSmoothToonFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHbHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsHbHb:(NSInteger)hb;
+ (BOOL)setTexelWidthHbHb:(NSInteger)hb;
+ (BOOL)texelWidthHbHb:(NSInteger)hb;
+ (BOOL)setTexelHeightHbHb:(NSInteger)hb;
+ (BOOL)texelHeightHbHb:(NSInteger)hb;
+ (BOOL)setThresholdHbHb:(NSInteger)hb;
+ (BOOL)thresholdHbHb:(NSInteger)hb;
+ (BOOL)setQuantizationLevelsHbHb:(NSInteger)hb;
+ (BOOL)quantizationLevelsHbHb:(NSInteger)hb;

@end
