#import "GPUImageSubtractBlendFilter+BmBm.h"
@implementation GPUImageSubtractBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
