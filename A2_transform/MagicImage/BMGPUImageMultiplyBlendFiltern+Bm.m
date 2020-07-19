#import "BMGPUImageMultiplyBlendFiltern+Bm.h"
@implementation BMGPUImageMultiplyBlendFiltern (Bm)
+ (BOOL)UinitBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
