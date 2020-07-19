#import "GPUImageFilterGroup.h"
#import "GPUImageSmoothToonFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageToonFilter.h"

@interface GPUImageSmoothToonFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)setTexelWidthHb:(NSInteger)hb;
+ (BOOL)texelWidthHb:(NSInteger)hb;
+ (BOOL)setTexelHeightHb:(NSInteger)hb;
+ (BOOL)texelHeightHb:(NSInteger)hb;
+ (BOOL)setThresholdHb:(NSInteger)hb;
+ (BOOL)thresholdHb:(NSInteger)hb;
+ (BOOL)setQuantizationLevelsHb:(NSInteger)hb;
+ (BOOL)quantizationLevelsHb:(NSInteger)hb;

@end
