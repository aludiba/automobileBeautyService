#import "BMGPUImageHSBFilterH.h"
@implementation BMGPUImageHSBFilterH
+ (BOOL)EInitbmbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)gResetbmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)XRotatehuebmbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)eAdjustsaturationbmbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)TAdjustbrightnessbmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)W_Updatecolormatrixbmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)n0Bmbm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
