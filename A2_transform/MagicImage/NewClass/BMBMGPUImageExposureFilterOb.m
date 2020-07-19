#import "BMBMGPUImageExposureFilterOb.h"
@implementation BMBMGPUImageExposureFilterOb
+ (BOOL)oKinit:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)cIsetexposure:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
