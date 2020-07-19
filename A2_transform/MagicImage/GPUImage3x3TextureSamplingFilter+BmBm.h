#import "GPUImageFilter.h"
#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImage3x3TextureSamplingFilter+Bm.h"

@interface GPUImage3x3TextureSamplingFilter (BmBm)
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBmBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM;

@end
