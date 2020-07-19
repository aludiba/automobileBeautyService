#import "BMBMGPUImageExposureFilterOp.h"
@implementation BMBMGPUImageExposureFilterOp
+ (BOOL)hKinit:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)OIsetexposure:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
