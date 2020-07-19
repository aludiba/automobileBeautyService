#import "GPUImageFilter.h"
#import "GPUImageLineGenerator.h"

@interface GPUImageLineGenerator (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)generateLineCoordinatesBm:(NSInteger)BM;
+ (BOOL)renderLinesFromArrayCountFrametimeBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;
+ (BOOL)setLineWidthBm:(NSInteger)BM;
+ (BOOL)setLineColorRedGreenBlueBm:(NSInteger)BM;

@end
