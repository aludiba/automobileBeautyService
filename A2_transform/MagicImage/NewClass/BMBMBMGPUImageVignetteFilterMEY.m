#import "BMBMBMGPUImageVignetteFilterMEY.h"
@implementation BMBMBMGPUImageVignetteFilterMEY
+ (BOOL)dWninitbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)WBcsetvignettecenterbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)uCfsetvignettecolorbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)gOjsetvignettestartbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)UAwsetvignetteendbm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
