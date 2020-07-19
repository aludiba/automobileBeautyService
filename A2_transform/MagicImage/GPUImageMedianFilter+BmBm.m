#import "GPUImageMedianFilter+BmBm.h"
@implementation GPUImageMedianFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
