#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageLanczosResamplingFilter.h"
#import "GPUImageLanczosResamplingFilter+Bm.h"
#import "GPUImageLanczosResamplingFilter+BmBm.h"
#import "GPUImageLanczosResamplingFilter+BmBmBm.h"

@interface GPUImageLanczosResamplingFilter (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmBmBmHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeBmBmBmHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBmHb:(NSInteger)hb;

@end
