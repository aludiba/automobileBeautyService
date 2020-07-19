#import "GPUImageSubtractBlendFilter+Bm.h"
@implementation GPUImageSubtractBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
