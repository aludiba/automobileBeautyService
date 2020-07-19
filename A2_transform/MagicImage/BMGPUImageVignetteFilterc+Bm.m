#import "BMGPUImageVignetteFilterc+Bm.h"
@implementation BMGPUImageVignetteFilterc (Bm)
+ (BOOL)dInitbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)PSetvignettecenterbmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)KSetvignettecolorbmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)tSetvignettestartbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)YSetvignetteendbmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
