#import "GPUImageNormalBlendFilter+Bm.h"
@implementation GPUImageNormalBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
