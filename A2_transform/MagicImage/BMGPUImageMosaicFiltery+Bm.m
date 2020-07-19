#import "BMGPUImageMosaicFiltery+Bm.h"
@implementation BMGPUImageMosaicFiltery (Bm)
+ (BOOL)CinitBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)bSetcoloronBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)USetnumtilesBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)KSetinputtilesizeBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)ZSetdisplaytilesizeBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)eSettilesetBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
