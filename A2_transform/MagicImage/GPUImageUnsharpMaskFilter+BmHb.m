#import "GPUImageUnsharpMaskFilter+BmHb.h"
@implementation GPUImageUnsharpMaskFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)blurRadiusInPixelsBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setIntensityBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
