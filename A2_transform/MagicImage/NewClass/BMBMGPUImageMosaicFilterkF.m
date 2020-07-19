#import "BMBMGPUImageMosaicFilterkF.h"
@implementation BMBMGPUImageMosaicFilterkF
+ (BOOL)gOinitbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)SKsetcoloronbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)XRsetnumtilesbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)mOsetinputtilesizebm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)zTsetdisplaytilesizebm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)sTsettilesetbm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
