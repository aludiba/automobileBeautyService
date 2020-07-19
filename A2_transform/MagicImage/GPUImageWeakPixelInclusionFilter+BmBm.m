#import "GPUImageWeakPixelInclusionFilter+BmBm.h"
@implementation GPUImageWeakPixelInclusionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
