#import "BMGPUImageExposureFilterV.h"
@implementation BMGPUImageExposureFilterV
+ (BOOL)wInitbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)WSetexposurebm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
