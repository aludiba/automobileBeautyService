#import "GPUImageTwoInputFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter+Bm.h"

@interface GPUImageTwoInputCrossTextureSamplingFilter (BmBm)
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM;

@end
