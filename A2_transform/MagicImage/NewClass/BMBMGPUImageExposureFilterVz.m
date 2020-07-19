#import "BMBMGPUImageExposureFilterVz.h"
@implementation BMBMGPUImageExposureFilterVz
+ (BOOL)rWinitbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)YWsetexposurebm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
