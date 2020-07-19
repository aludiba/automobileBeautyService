#import "BMGPUImageMosaicFilterW.h"
@implementation BMGPUImageMosaicFilterW
+ (BOOL)ainit:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)kSetcoloron:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)qSetnumtiles:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)nSetinputtilesize:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)ESetdisplaytilesize:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)QSettileset:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
