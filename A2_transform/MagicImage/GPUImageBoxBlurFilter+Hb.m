#import "GPUImageBoxBlurFilter+Hb.h"
@implementation GPUImageBoxBlurFilter (Hb)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
