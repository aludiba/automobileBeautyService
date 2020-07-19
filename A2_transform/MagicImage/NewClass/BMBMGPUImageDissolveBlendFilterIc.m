#import "BMBMGPUImageDissolveBlendFilterIc.h"
@implementation BMBMGPUImageDissolveBlendFilterIc
+ (BOOL)JSinit:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ODsetmix:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
