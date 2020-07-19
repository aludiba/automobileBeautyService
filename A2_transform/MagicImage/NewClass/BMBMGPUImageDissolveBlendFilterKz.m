#import "BMBMGPUImageDissolveBlendFilterKz.h"
@implementation BMBMGPUImageDissolveBlendFilterKz
+ (BOOL)WBinitbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)BAsetmixbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
