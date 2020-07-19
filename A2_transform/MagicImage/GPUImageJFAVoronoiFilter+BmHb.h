#import "GPUImageFilter.h"
#import "GPUImageJFAVoronoiFilter.h"
#import "GPUImageJFAVoronoiFilter+Bm.h"

@interface GPUImageJFAVoronoiFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setSizeInPixelsBmHb:(NSInteger)hb;
+ (BOOL)nextPowerOfTwoBmHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb;

@end
