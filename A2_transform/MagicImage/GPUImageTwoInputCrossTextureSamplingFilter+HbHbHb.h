#import "GPUImageTwoInputFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter+Hb.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter+HbHb.h"

@interface GPUImageTwoInputCrossTextureSamplingFilter (HbHbHb)
+ (BOOL)initWithFragmentShaderFromStringHbHbHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHbHbHb:(NSInteger)hb;
+ (BOOL)setTexelWidthHbHbHb:(NSInteger)hb;
+ (BOOL)setTexelHeightHbHbHb:(NSInteger)hb;

@end
