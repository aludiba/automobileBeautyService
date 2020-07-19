#import "BMGPUImageVignetteFilterc.h"
@implementation BMGPUImageVignetteFilterc
+ (BOOL)dInitbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)PSetvignettecenterbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)KSetvignettecolorbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)tSetvignettestartbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)YSetvignetteendbm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
