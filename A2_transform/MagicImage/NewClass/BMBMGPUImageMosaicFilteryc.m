#import "BMBMGPUImageMosaicFilteryc.h"
@implementation BMBMGPUImageMosaicFilteryc
+ (BOOL)HCinit:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ABsetcoloron:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)FUsetnumtiles:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)dKsetinputtilesize:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)aZsetdisplaytilesize:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ZEsettileset:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
