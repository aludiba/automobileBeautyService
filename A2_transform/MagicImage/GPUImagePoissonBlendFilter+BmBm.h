#import "GPUImageTwoInputCrossTextureSamplingFilter.h"
#import "GPUImageFilterGroup.h"
#import "GPUImagePoissonBlendFilter.h"
#import "GPUImagePoissonBlendFilter+Bm.h"

@interface GPUImagePoissonBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setMixBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM;

@end
