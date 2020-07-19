#import "BMBMGPUImageVignetteFilterME.h"
@implementation BMBMGPUImageVignetteFilterME
+ (BOOL)WNinitbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)bCsetvignettecenterbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)cFsetvignettecolorbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)oJsetvignettestartbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)AWsetvignetteendbm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
