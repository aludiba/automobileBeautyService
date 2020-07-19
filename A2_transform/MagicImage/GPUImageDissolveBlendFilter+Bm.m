#import "GPUImageDissolveBlendFilter+Bm.h"
@implementation GPUImageDissolveBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setMixBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
