#import "BMGPUImageLuminosityBlendFilterq+BmBm.h"
@implementation BMGPUImageLuminosityBlendFilterq (BmBm)
+ (BOOL)EinitBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
