#import "BMGPUImageHSBFilterL.h"
@implementation BMGPUImageHSBFilterL
+ (BOOL)kInitbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)SResetbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)PRotatehuebm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)kAdjustsaturationbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)dAdjustbrightnessbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)q_Updatecolormatrixbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)F0Bm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
