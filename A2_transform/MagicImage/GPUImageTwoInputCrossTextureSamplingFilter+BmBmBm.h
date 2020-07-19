#import "GPUImageTwoInputFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter+Bm.h"
#import "GPUImageTwoInputCrossTextureSamplingFilter+BmBm.h"

@interface GPUImageTwoInputCrossTextureSamplingFilter (BmBmBm)
+ (BOOL)initWithFragmentShaderFromStringBmBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM;

@end
