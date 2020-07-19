#import "BMBMGPUImageMosaicFilterWl.h"
@implementation BMBMGPUImageMosaicFilterWl
+ (BOOL)CAinit:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)pKsetcoloron:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)PQsetnumtiles:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)UNsetinputtilesize:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)CEsetdisplaytilesize:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)OQsettileset:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
