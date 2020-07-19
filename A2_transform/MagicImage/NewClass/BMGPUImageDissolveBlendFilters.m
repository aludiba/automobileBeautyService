#import "BMGPUImageDissolveBlendFilters.h"
@implementation BMGPUImageDissolveBlendFilters
+ (BOOL)bInitbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)DSetmixbm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
