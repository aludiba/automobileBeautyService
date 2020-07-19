#import "GPUImageMosaicFilter+Bm.h"
@implementation GPUImageMosaicFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setColorOnBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setNumTilesBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setInputTileSizeBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setDisplayTileSizeBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setTileSetBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
