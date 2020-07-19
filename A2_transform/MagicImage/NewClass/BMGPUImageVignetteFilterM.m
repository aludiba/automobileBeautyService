#import "BMGPUImageVignetteFilterM.h"
@implementation BMGPUImageVignetteFilterM
+ (BOOL)nInitbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)cSetvignettecenterbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)FSetvignettecolorbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)jSetvignettestartbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)wSetvignetteendbm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
