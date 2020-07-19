#import "GPUImageLineGenerator+Bm.h"
@implementation GPUImageLineGenerator (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)generateLineCoordinatesBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)renderLinesFromArrayCountFrametimeBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setLineWidthBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setLineColorRedGreenBlueBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
