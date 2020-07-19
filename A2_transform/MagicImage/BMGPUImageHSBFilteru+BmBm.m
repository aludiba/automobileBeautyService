#import "BMGPUImageHSBFilteru+BmBm.h"
@implementation BMGPUImageHSBFilteru (BmBm)
+ (BOOL)hinitBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)qresetBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)ORotatehueBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)ZAdjustsaturationBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)gAdjustbrightnessBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)w_updateColorMatrixBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)0BmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
