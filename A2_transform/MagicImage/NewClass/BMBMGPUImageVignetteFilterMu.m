#import "BMBMGPUImageVignetteFilterMu.h"
@implementation BMBMGPUImageVignetteFilterMu
+ (BOOL)NNinitbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)OCsetvignettecenterbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)nFsetvignettecolorbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)iJsetvignettestartbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)HWsetvignetteendbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
