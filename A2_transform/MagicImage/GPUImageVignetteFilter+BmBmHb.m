#import "GPUImageVignetteFilter+BmBmHb.h"
@implementation GPUImageVignetteFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setVignetteCenterBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setVignetteColorBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setVignetteStartBmBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setVignetteEndBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
