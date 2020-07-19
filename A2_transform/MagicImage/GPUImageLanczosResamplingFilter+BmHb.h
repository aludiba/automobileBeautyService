#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageLanczosResamplingFilter.h"
#import "GPUImageLanczosResamplingFilter+Bm.h"

@interface GPUImageLanczosResamplingFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeBmHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb;

@end
