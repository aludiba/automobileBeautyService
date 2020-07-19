#import "BMBMGPUImageMosaicFilterys.h"
@implementation BMBMGPUImageMosaicFilterys
+ (BOOL)PCinitbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)kBsetcoloronbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)iUsetnumtilesbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)WKsetinputtilesizebm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)BZsetdisplaytilesizebm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)qEsettilesetbm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
