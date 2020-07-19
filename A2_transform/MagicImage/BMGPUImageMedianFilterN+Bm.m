#import "BMGPUImageMedianFilterN+Bm.h"
@implementation BMGPUImageMedianFilterN (Bm)
+ (BOOL)YinitBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
