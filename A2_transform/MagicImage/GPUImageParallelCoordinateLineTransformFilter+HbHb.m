#import "GPUImageParallelCoordinateLineTransformFilter+HbHb.h"
@implementation GPUImageParallelCoordinateLineTransformFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)deallocHbHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)initializeAttributesHbHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)generateLineCoordinatesHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHbHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
