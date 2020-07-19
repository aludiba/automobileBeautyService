#import "BMGPUImageMosaicFilterk+Bm.h"
@implementation BMGPUImageMosaicFilterk (Bm)
+ (BOOL)OInitbmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)kSetcoloronbmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)RSetnumtilesbmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)oSetinputtilesizebmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)tSetdisplaytilesizebmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)TSettilesetbmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
