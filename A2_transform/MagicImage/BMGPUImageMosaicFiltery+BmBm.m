#import "BMGPUImageMosaicFiltery+BmBm.h"
@implementation BMGPUImageMosaicFiltery (BmBm)
+ (BOOL)CinitBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)bSetcoloronBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)USetnumtilesBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)KSetinputtilesizeBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)ZSetdisplaytilesizeBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)eSettilesetBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
