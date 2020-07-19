#import "GPUImageAlphaBlendFilter+BmBmBm.h"
@implementation GPUImageAlphaBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setMixBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
