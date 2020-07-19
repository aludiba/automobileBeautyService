#import "GPUImageUnsharpMaskFilter+Hb.h"
@implementation GPUImageUnsharpMaskFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setIntensityHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
