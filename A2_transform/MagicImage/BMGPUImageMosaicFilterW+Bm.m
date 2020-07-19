#import "BMGPUImageMosaicFilterW+Bm.h"
@implementation BMGPUImageMosaicFilterW (Bm)
+ (BOOL)ainitBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)kSetcoloronBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)qSetnumtilesBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)nSetinputtilesizeBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)ESetdisplaytilesizeBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)QSettilesetBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
