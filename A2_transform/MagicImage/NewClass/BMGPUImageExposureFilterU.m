#import "BMGPUImageExposureFilterU.h"
@implementation BMGPUImageExposureFilterU
+ (BOOL)Oinit:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)XSetexposure:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
