#import "GPUImageParallelCoordinateLineTransformFilter+Hb.h"
@implementation GPUImageParallelCoordinateLineTransformFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)initializeAttributesHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)generateLineCoordinatesHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
