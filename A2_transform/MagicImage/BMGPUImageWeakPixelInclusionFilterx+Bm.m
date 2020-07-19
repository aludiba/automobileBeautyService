#import "BMGPUImageWeakPixelInclusionFilterx+Bm.h"
@implementation BMGPUImageWeakPixelInclusionFilterx (Bm)
+ (BOOL)FinitBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
