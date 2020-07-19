#import "BMBMGPUImageVignetteFiltercI.h"
@implementation BMBMGPUImageVignetteFiltercI
+ (BOOL)RDinitbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)KPsetvignettecenterbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)VKsetvignettecolorbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)nTsetvignettestartbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)OYsetvignetteendbm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
