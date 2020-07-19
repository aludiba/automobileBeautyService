#import "BMGPUImageMosaicFilterW+BmHb.h"
@implementation BMGPUImageMosaicFilterW (BmHb)
+ (BOOL)ainitBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)kSetcoloronBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)qSetnumtilesBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)nSetinputtilesizeBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)ESetdisplaytilesizeBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)QSettilesetBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
