#import "GPUImageUnsharpMaskFilter+BmBmBm.h"
@implementation GPUImageUnsharpMaskFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setIntensityBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
