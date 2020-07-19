#import "GPUImageUnsharpMaskFilter+BmBmHb.h"
@implementation GPUImageUnsharpMaskFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)setIntensityBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
