#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageLanczosResamplingFilter.h"
#import "GPUImageLanczosResamplingFilter+Bm.h"
#import "GPUImageLanczosResamplingFilter+BmBm.h"
#import "GPUImageLanczosResamplingFilter+BmBmBm.h"
#import "GPUImageLanczosResamplingFilter+BmBmBmHb.h"

@interface GPUImageLanczosResamplingFilter (BmBmBmHbHb)
+ (BOOL)initBmBmBmHbHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmBmBmHbHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeBmBmBmHbHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBmHbHb:(NSInteger)hb;

@end
