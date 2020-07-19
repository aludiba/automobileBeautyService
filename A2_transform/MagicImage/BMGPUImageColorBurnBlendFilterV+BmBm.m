#import "BMGPUImageColorBurnBlendFilterV+BmBm.h"
@implementation BMGPUImageColorBurnBlendFilterV (BmBm)
+ (BOOL)ainitBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
