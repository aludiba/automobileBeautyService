#import "GPUImageTwoInputFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter.h"

@interface GPUImageTwoInputCrossTextureSamplingFilter (Hb)
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)setTexelWidthHb:(NSInteger)hb;
+ (BOOL)setTexelHeightHb:(NSInteger)hb;

@end
