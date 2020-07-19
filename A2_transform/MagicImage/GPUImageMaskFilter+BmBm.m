#import "GPUImageMaskFilter+BmBm.h"
@implementation GPUImageMaskFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
