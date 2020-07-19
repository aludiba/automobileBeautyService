#import "GPUImageMaskFilter+Bm.h"
@implementation GPUImageMaskFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
