#import "GPUImageAlphaBlendFilter+BmBm.h"
@implementation GPUImageAlphaBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setMixBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
