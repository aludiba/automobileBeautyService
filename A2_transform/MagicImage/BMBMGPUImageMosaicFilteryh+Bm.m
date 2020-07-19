#import "BMBMGPUImageMosaicFilteryh+Bm.h"
@implementation BMBMGPUImageMosaicFilteryh (Bm)
+ (BOOL)qCinitBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)OBsetcoloronBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)oUsetnumtilesBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)sKsetinputtilesizeBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)iZsetdisplaytilesizeBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)mEsettilesetBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
