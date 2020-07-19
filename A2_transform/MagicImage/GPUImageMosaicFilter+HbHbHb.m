#import "GPUImageMosaicFilter+HbHbHb.h"
@implementation GPUImageMosaicFilter (HbHbHb)
+ (BOOL)initHbHbHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setColorOnHbHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)setNumTilesHbHbHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)setInputTileSizeHbHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setDisplayTileSizeHbHbHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setTileSetHbHbHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
