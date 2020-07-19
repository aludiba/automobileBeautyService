#import "BMGPUImageHSBFilteru+Bm.h"
@implementation BMGPUImageHSBFilteru (Bm)
+ (BOOL)hinitBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)qresetBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)ORotatehueBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)ZAdjustsaturationBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)gAdjustbrightnessBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)w_updateColorMatrixBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)0Bm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
