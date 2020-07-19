#import "GPUImageFilter.h"
#import "GPUImageParallelCoordinateLineTransformFilter.h"

@interface GPUImageParallelCoordinateLineTransformFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)initializeAttributesBm:(NSInteger)BM;
+ (BOOL)generateLineCoordinatesBm:(NSInteger)BM;
+ (BOOL)newFrameReadyAtTimeAtindexBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;

@end
