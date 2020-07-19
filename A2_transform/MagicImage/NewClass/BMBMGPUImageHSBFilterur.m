#import "BMBMGPUImageHSBFilterur.h"
@implementation BMBMGPUImageHSBFilterur
+ (BOOL)YHinitbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)PQresetbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)NOrotatehuebm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)tZadjustsaturationbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)CGadjustbrightnessbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)TW_Updatecolormatrixbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)q0Bm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
