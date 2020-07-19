#import "GPUImageGammaFilter+BmBm.h"
@implementation GPUImageGammaFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setGammaBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
