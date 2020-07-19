#import "GPUImageMosaicFilter+BmBmBm.h"
@implementation GPUImageMosaicFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setColorOnBmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setNumTilesBmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setInputTileSizeBmBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setDisplayTileSizeBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setTileSetBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
