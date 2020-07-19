#import "GPUImageAddBlendFilter+BmBm.h"
@implementation GPUImageAddBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
