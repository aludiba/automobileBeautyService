#import "GPUImageExclusionBlendFilter+Bm.h"
@implementation GPUImageExclusionBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
