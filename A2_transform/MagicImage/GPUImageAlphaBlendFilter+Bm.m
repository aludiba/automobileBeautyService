#import "GPUImageAlphaBlendFilter+Bm.h"
@implementation GPUImageAlphaBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setMixBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
