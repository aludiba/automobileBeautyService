#import "GPUImageFilter.h"
#import "GPUImageJFAVoronoiFilter.h"
#import "GPUImageJFAVoronoiFilter+Bm.h"

@interface GPUImageJFAVoronoiFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setSizeInPixelsBmBm:(NSInteger)BM;
+ (BOOL)nextPowerOfTwoBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM;

@end
