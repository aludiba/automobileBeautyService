#import "BMBMGPUImageExposureFilterOp+Bm.h"
@implementation BMBMGPUImageExposureFilterOp (Bm)
+ (BOOL)hKinitBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)OIsetexposureBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
