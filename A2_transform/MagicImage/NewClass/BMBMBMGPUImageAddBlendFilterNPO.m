#import "BMBMBMGPUImageAddBlendFilterNPO.h"
@implementation BMBMBMGPUImageAddBlendFilterNPO
+ (BOOL)kBrinit:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
