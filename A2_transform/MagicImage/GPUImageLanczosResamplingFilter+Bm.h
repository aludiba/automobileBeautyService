#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageLanczosResamplingFilter.h"

@interface GPUImageLanczosResamplingFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;

@end
