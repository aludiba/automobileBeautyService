#import "BMBMGPUImageVignetteFilterbJ.h"
@implementation BMBMGPUImageVignetteFilterbJ
+ (BOOL)hWinit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)UBsetvignettecenter:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)cXsetvignettecolor:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)EXsetvignettestart:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)XWsetvignetteend:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
