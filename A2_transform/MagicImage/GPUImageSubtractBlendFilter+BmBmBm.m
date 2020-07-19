#import "GPUImageSubtractBlendFilter+BmBmBm.h"
@implementation GPUImageSubtractBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
