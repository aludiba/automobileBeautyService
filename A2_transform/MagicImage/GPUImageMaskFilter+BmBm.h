#import "GPUImageTwoInputFilter.h"
#import "GPUImageMaskFilter.h"
#import "GPUImageMaskFilter+Bm.h"

@interface GPUImageMaskFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM;

@end
