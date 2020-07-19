#import "BMBMGPUImageMosaicFilteryh.h"
@implementation BMBMGPUImageMosaicFilteryh
+ (BOOL)qCinit:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)OBsetcoloron:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)oUsetnumtiles:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)sKsetinputtilesize:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)iZsetdisplaytilesize:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)mEsettileset:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
