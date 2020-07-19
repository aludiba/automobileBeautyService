#import "GPUImageMedianFilter+BmBmBm.h"
@implementation GPUImageMedianFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
