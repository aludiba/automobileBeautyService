#import "BMBMGPUImageAlphaBlendFilterlx+Bm.h"
@implementation BMBMGPUImageAlphaBlendFilterlx (Bm)
+ (BOOL)gCinitBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)lNsetmixBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
