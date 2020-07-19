#import "GPUImageMosaicFilter+Hb.h"
@implementation GPUImageMosaicFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)setColorOnHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setNumTilesHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)setInputTileSizeHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setDisplayTileSizeHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setTileSetHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
