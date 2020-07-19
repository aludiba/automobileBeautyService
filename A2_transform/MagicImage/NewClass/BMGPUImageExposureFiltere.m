#import "BMGPUImageExposureFiltere.h"
@implementation BMGPUImageExposureFiltere
+ (BOOL)WInitbmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)HSetexposurebmbm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
