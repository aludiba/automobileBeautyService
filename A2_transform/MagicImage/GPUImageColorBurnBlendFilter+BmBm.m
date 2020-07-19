#import "GPUImageColorBurnBlendFilter+BmBm.h"
@implementation GPUImageColorBurnBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
