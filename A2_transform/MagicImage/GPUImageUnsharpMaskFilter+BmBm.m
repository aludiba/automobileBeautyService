#import "GPUImageUnsharpMaskFilter+BmBm.h"
@implementation GPUImageUnsharpMaskFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setIntensityBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
