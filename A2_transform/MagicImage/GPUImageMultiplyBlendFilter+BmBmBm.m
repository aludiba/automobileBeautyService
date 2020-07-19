#import "GPUImageMultiplyBlendFilter+BmBmBm.h"
@implementation GPUImageMultiplyBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
