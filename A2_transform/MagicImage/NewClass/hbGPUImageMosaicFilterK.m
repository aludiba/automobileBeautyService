#import "hbGPUImageMosaicFilterK.h"
@implementation hbGPUImageMosaicFilterK
+ (BOOL)finit:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)dSetcoloron:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)LSetnumtiles:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)pSetinputtilesize:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)aSetdisplaytilesize:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)RSettileset:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
