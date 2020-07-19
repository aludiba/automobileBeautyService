#import "GPUImageFilter.h"
#import "GPUImageJFAVoronoiFilter.h"

@interface GPUImageJFAVoronoiFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setSizeInPixelsBm:(NSInteger)BM;
+ (BOOL)nextPowerOfTwoBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;

@end
