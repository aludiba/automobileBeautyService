#import "GPUImageAddBlendFilter+Bm.h"
@implementation GPUImageAddBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
