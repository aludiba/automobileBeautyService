#import "GPUImageColorBurnBlendFilter+BmBmBm.h"
@implementation GPUImageColorBurnBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
