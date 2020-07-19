#import "BMGPUImageDissolveBlendFilterI+BmBm.h"
@implementation BMGPUImageDissolveBlendFilterI (BmBm)
+ (BOOL)sinitBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)dSetmixBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
