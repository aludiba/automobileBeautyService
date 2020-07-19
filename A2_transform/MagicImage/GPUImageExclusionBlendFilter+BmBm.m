#import "GPUImageExclusionBlendFilter+BmBm.h"
@implementation GPUImageExclusionBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
