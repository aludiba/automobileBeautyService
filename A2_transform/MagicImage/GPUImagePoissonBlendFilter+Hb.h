#import "GPUImageTwoInputCrossTextureSamplingFilter.h"
#import "GPUImageFilterGroup.h"
#import "GPUImagePoissonBlendFilter.h"

@interface GPUImagePoissonBlendFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setMixHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;

@end
