#import "GPUImageWeakPixelInclusionFilter+Bm.h"
@implementation GPUImageWeakPixelInclusionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
