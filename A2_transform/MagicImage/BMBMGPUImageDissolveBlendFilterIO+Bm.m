#import "BMBMGPUImageDissolveBlendFilterIO+Bm.h"
@implementation BMBMGPUImageDissolveBlendFilterIO (Bm)
+ (BOOL)hSinitBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)yDsetmixBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
