#import "GPUImageDissolveBlendFilter+BmBm.h"
@implementation GPUImageDissolveBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setMixBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
