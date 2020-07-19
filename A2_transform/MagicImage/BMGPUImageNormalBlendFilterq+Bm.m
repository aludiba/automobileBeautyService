#import "BMGPUImageNormalBlendFilterq+Bm.h"
@implementation BMGPUImageNormalBlendFilterq (Bm)
+ (BOOL)RinitBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
