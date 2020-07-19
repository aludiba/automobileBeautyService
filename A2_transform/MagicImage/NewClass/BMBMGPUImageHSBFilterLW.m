#import "BMBMGPUImageHSBFilterLW.h"
@implementation BMBMGPUImageHSBFilterLW
+ (BOOL)iKinitbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)USresetbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)tProtatehuebm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)BKadjustsaturationbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)dDadjustbrightnessbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)FQ_Updatecolormatrixbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)nF0Bm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
