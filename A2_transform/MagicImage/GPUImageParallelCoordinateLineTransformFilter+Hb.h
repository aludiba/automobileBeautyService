#import "GPUImageFilter.h"
#import "GPUImageParallelCoordinateLineTransformFilter.h"

@interface GPUImageParallelCoordinateLineTransformFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)initializeAttributesHb:(NSInteger)hb;
+ (BOOL)generateLineCoordinatesHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;

@end
