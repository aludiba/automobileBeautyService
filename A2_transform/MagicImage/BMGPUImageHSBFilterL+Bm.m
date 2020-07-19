#import "BMGPUImageHSBFilterL+Bm.h"
@implementation BMGPUImageHSBFilterL (Bm)
+ (BOOL)kInitbmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)SResetbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)PRotatehuebmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)kAdjustsaturationbmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)dAdjustbrightnessbmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)q_UpdatecolormatrixbmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)F0BmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
