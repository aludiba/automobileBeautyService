#import "BMBMGPUImageAddBlendFilterNP+Bm.h"
@implementation BMBMGPUImageAddBlendFilterNP (Bm)
+ (BOOL)BRinitBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
