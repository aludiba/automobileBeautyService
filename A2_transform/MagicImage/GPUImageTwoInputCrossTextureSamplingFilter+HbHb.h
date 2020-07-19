#import "GPUImageTwoInputFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter+Hb.h"

@interface GPUImageTwoInputCrossTextureSamplingFilter (HbHb)
+ (BOOL)initWithFragmentShaderFromStringHbHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb;
+ (BOOL)setTexelWidthHbHb:(NSInteger)hb;
+ (BOOL)setTexelHeightHbHb:(NSInteger)hb;

@end
