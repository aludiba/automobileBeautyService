#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageLanczosResamplingFilter.h"

@interface GPUImageLanczosResamplingFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;

@end
