#import "GPUImageBuffer+Hb.h"
@implementation GPUImageBuffer (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setBufferSizeHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
