#import "BMBMGPUImageVignetteFilterME+Bm.h"
@implementation BMBMGPUImageVignetteFilterME (Bm)
+ (BOOL)WNinitbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)bCsetvignettecenterbmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)cFsetvignettecolorbmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)oJsetvignettestartbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)AWsetvignetteendbmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
