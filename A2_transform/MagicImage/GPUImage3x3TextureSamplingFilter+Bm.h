#import "GPUImageFilter.h"
#import "GPUImage3x3TextureSamplingFilter.h"

@interface GPUImage3x3TextureSamplingFilter (Bm)
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBm:(NSInteger)BM;

@end
