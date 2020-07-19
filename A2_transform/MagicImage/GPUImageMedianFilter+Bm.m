#import "GPUImageMedianFilter+Bm.h"
@implementation GPUImageMedianFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
