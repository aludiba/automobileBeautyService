#import "GPUImageFilter.h"
#import "GPUImageJFAVoronoiFilter.h"

@interface GPUImageJFAVoronoiFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setSizeInPixelsHb:(NSInteger)hb;
+ (BOOL)nextPowerOfTwoHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;

@end
