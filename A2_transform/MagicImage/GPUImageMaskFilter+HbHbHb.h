#import "GPUImageTwoInputFilter.h"
#import "GPUImageMaskFilter.h"
#import "GPUImageMaskFilter+Hb.h"
#import "GPUImageMaskFilter+HbHb.h"

@interface GPUImageMaskFilter (HbHbHb)
+ (BOOL)initHbHbHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHbHb:(NSInteger)hb;

@end
