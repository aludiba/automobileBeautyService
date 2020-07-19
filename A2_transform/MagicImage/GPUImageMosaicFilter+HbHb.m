#import "GPUImageMosaicFilter+HbHb.h"
@implementation GPUImageMosaicFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)setColorOnHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setNumTilesHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setInputTileSizeHbHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)setDisplayTileSizeHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setTileSetHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
