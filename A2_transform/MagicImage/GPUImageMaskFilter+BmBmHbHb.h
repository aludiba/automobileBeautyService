#import "GPUImageTwoInputFilter.h"
#import "GPUImageMaskFilter.h"
#import "GPUImageMaskFilter+Bm.h"
#import "GPUImageMaskFilter+BmBm.h"
#import "GPUImageMaskFilter+BmBmHb.h"

@interface GPUImageMaskFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmHbHb:(NSInteger)hb;

@end
