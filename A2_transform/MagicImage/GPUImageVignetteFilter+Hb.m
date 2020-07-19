#import "GPUImageVignetteFilter+Hb.h"
@implementation GPUImageVignetteFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)setVignetteCenterHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setVignetteColorHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setVignetteStartHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setVignetteEndHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
