#import "BMGPUImageDissolveBlendFilterK.h"
@implementation BMGPUImageDissolveBlendFilterK
+ (BOOL)bInitbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)aSetmixbm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
