#import "GPUImageNormalBlendFilter+BmBm.h"
@implementation GPUImageNormalBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
