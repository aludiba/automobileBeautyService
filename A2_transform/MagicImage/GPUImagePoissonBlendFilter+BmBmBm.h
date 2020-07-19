#import "GPUImageTwoInputCrossTextureSamplingFilter.h"
#import "GPUImageFilterGroup.h"
#import "GPUImagePoissonBlendFilter.h"
#import "GPUImagePoissonBlendFilter+Bm.h"
#import "GPUImagePoissonBlendFilter+BmBm.h"

@interface GPUImagePoissonBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setMixBmBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBm:(NSInteger)BM;

@end
