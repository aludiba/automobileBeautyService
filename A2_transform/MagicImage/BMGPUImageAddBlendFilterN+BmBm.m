#import "BMGPUImageAddBlendFilterN+BmBm.h"
@implementation BMGPUImageAddBlendFilterN (BmBm)
+ (BOOL)RinitBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
