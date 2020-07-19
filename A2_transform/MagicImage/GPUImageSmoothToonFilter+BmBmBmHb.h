#import "GPUImageFilterGroup.h"
#import "GPUImageSmoothToonFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageToonFilter.h"
#import "GPUImageSmoothToonFilter+Bm.h"
#import "GPUImageSmoothToonFilter+BmBm.h"
#import "GPUImageSmoothToonFilter+BmBmBm.h"

@interface GPUImageSmoothToonFilter (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmBmBmHb:(NSInteger)hb;
+ (BOOL)setTexelWidthBmBmBmHb:(NSInteger)hb;
+ (BOOL)texelWidthBmBmBmHb:(NSInteger)hb;
+ (BOOL)setTexelHeightBmBmBmHb:(NSInteger)hb;
+ (BOOL)texelHeightBmBmBmHb:(NSInteger)hb;
+ (BOOL)setThresholdBmBmBmHb:(NSInteger)hb;
+ (BOOL)thresholdBmBmBmHb:(NSInteger)hb;
+ (BOOL)setQuantizationLevelsBmBmBmHb:(NSInteger)hb;
+ (BOOL)quantizationLevelsBmBmBmHb:(NSInteger)hb;

@end
