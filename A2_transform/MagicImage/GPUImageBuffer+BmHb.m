#import "GPUImageBuffer+BmHb.h"
@implementation GPUImageBuffer (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)deallocBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindexBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setBufferSizeBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
