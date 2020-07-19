#import "BMGPUImageExclusionBlendFilterS+BmBm.h"
@implementation BMGPUImageExclusionBlendFilterS (BmBm)
+ (BOOL)xinitBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
