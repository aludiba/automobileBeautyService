#import "BMBMGPUImageMosaicFilteryh+BmHb.h"
@implementation BMBMGPUImageMosaicFilteryh (BmHb)
+ (BOOL)qCinitBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)OBsetcoloronBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)oUsetnumtilesBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)sKsetinputtilesizeBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)iZsetdisplaytilesizeBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)mEsettilesetBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
