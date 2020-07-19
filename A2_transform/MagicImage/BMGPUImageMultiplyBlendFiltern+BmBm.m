#import "BMGPUImageMultiplyBlendFiltern+BmBm.h"
@implementation BMGPUImageMultiplyBlendFiltern (BmBm)
+ (BOOL)UinitBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
