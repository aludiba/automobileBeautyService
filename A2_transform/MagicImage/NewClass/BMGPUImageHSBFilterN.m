#import "BMGPUImageHSBFilterN.h"
@implementation BMGPUImageHSBFilterN
+ (BOOL)YInitbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)AResetbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)KRotatehuebm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)nAdjustsaturationbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)lAdjustbrightnessbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)O_Updatecolormatrixbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)f0Bm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
