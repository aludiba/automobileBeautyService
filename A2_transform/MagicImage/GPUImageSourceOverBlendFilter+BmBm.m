#import "GPUImageSourceOverBlendFilter+BmBm.h"
@implementation GPUImageSourceOverBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
