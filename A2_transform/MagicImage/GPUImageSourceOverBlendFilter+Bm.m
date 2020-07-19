#import "GPUImageSourceOverBlendFilter+Bm.h"
@implementation GPUImageSourceOverBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
