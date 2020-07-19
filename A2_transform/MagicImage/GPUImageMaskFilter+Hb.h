#import "GPUImageTwoInputFilter.h"
#import "GPUImageMaskFilter.h"

@interface GPUImageMaskFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;

@end
