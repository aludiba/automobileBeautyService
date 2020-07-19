#import "BMGPUImageExposureFilterU+Bm.h"
@implementation BMGPUImageExposureFilterU (Bm)
+ (BOOL)OinitBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)XSetexposureBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
