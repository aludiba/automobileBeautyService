#import "GPUImageLineGenerator+BmBm.h"
@implementation GPUImageLineGenerator (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)generateLineCoordinatesBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)renderLinesFromArrayCountFrametimeBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setLineWidthBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setLineColorRedGreenBlueBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
