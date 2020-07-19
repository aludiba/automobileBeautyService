#import "BMGPUImageHSBFilterC.h"
@implementation BMGPUImageHSBFilterC
+ (BOOL)pinit:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)kreset:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)VRotatehue:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)MAdjustsaturation:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)zAdjustbrightness:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)p_updateColorMatrix:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)Yfor(x=0:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
