#import "BMGPUImageExposureFilterO.h"
@implementation BMGPUImageExposureFilterO
+ (BOOL)kinit:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)ISetexposure:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
