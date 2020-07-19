#import "BMBMGPUImageLaplacianFilterMN.h"
@implementation BMBMGPUImageLaplacianFilterMN
+ (BOOL)ELinit:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
