#import "BMGPUImageAlphaBlendFilters+Bm.h"
@implementation BMGPUImageAlphaBlendFilters (Bm)
+ (BOOL)NinitBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)SSetmixBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
