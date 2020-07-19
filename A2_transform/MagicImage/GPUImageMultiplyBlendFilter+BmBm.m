#import "GPUImageMultiplyBlendFilter+BmBm.h"
@implementation GPUImageMultiplyBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
