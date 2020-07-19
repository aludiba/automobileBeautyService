#import "GPUImageVignetteFilter+BmHb.h"
@implementation GPUImageVignetteFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setVignetteCenterBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setVignetteColorBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setVignetteStartBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setVignetteEndBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
