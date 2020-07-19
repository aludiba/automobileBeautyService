#import "GPUImageTwoInputFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter.h"

@interface GPUImageTwoInputCrossTextureSamplingFilter (Bm)
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBm:(NSInteger)BM;

@end
