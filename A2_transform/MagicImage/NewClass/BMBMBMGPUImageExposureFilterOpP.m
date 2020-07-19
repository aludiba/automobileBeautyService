#import "BMBMBMGPUImageExposureFilterOpP.h"
@implementation BMBMBMGPUImageExposureFilterOpP
+ (BOOL)VHkinit:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)OOisetexposure:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
