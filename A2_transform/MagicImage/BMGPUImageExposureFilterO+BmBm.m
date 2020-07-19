#import "BMGPUImageExposureFilterO+BmBm.h"
@implementation BMGPUImageExposureFilterO (BmBm)
+ (BOOL)kinitBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)ISetexposureBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
