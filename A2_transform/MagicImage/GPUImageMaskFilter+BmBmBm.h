#import "GPUImageTwoInputFilter.h"
#import "GPUImageMaskFilter.h"
#import "GPUImageMaskFilter+Bm.h"
#import "GPUImageMaskFilter+BmBm.h"

@interface GPUImageMaskFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBm:(NSInteger)BM;

@end
