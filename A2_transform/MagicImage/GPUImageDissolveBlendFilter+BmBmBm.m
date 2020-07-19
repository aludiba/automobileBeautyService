#import "GPUImageDissolveBlendFilter+BmBmBm.h"
@implementation GPUImageDissolveBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setMixBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
