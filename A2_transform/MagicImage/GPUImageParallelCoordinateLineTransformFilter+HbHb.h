#import "GPUImageFilter.h"
#import "GPUImageParallelCoordinateLineTransformFilter.h"
#import "GPUImageParallelCoordinateLineTransformFilter+Hb.h"

@interface GPUImageParallelCoordinateLineTransformFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)deallocHbHb:(NSInteger)hb;
+ (BOOL)initializeAttributesHbHb:(NSInteger)hb;
+ (BOOL)generateLineCoordinatesHbHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHbHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHb:(NSInteger)hb;

@end
