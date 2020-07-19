#import "GPUImageUnsharpMaskFilter+Bm.h"
@implementation GPUImageUnsharpMaskFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setIntensityBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
