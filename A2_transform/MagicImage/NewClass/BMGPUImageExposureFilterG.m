#import "BMGPUImageExposureFilterG.h"
@implementation BMGPUImageExposureFilterG
+ (BOOL)kInitbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)QSetexposurebm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
