#import "BMGPUImageHSBFilterC+Bm.h"
@implementation BMGPUImageHSBFilterC (Bm)
+ (BOOL)pinitBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)kresetBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)VRotatehueBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)MAdjustsaturationBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)zAdjustbrightnessBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)p_updateColorMatrixBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)0Bm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
