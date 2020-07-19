#import "BMGPUImageColorBurnBlendFilterV+Bm.h"
@implementation BMGPUImageColorBurnBlendFilterV (Bm)
+ (BOOL)ainitBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
