#import "BMBMGPUImageHSBFilterup+Bm.h"
@implementation BMBMGPUImageHSBFilterup (Bm)
+ (BOOL)JHinitBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)PQresetBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)gOrotatehueBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)oZadjustsaturationBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)zGadjustbrightnessBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)KW_UpdatecolormatrixBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)i0Bm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
