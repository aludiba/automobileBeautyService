#import "GPUImageMosaicFilter+BmBm.h"
@implementation GPUImageMosaicFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setColorOnBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setNumTilesBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setInputTileSizeBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setDisplayTileSizeBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setTileSetBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
