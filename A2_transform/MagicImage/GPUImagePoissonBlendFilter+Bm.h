#import "GPUImageTwoInputCrossTextureSamplingFilter.h"
#import "GPUImageFilterGroup.h"
#import "GPUImagePoissonBlendFilter.h"

@interface GPUImagePoissonBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setMixBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;

@end
