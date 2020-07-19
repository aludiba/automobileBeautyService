#import "BMBMGPUImageExposureFilterUr.h"
@implementation BMBMGPUImageExposureFilterUr
+ (BOOL)JOinit:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)SXsetexposure:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
