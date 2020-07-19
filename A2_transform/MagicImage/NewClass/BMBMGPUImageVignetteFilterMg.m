#import "BMBMGPUImageVignetteFilterMg.h"
@implementation BMBMGPUImageVignetteFilterMg
+ (BOOL)UNinitbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)tCsetvignettecenterbmbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)CFsetvignettecolorbmbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)SJsetvignettestartbmbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)TWsetvignetteendbmbm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
