#import "BMGPUImageDissolveBlendFilterI+Bm.h"
@implementation BMGPUImageDissolveBlendFilterI (Bm)
+ (BOOL)sinitBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)dSetmixBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
