#import "hbGPUImageMosaicFiltert.h"
@implementation hbGPUImageMosaicFiltert
+ (BOOL)Qinit:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)rSetcoloron:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)rSetnumtiles:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)rSetinputtilesize:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)eSetdisplaytilesize:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)tSettileset:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
