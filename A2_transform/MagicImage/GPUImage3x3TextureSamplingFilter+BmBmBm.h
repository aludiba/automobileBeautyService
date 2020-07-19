#import "GPUImageFilter.h"
#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImage3x3TextureSamplingFilter+Bm.h"
#import "GPUImage3x3TextureSamplingFilter+BmBm.h"

@interface GPUImage3x3TextureSamplingFilter (BmBmBm)
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBmBmBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBmBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM;

@end
