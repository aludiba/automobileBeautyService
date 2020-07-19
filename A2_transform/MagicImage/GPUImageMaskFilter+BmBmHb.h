#import "GPUImageTwoInputFilter.h"
#import "GPUImageMaskFilter.h"
#import "GPUImageMaskFilter+Bm.h"
#import "GPUImageMaskFilter+BmBm.h"

@interface GPUImageMaskFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmHb:(NSInteger)hb;

@end
