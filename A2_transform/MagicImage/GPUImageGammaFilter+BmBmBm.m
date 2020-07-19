#import "GPUImageGammaFilter+BmBmBm.h"
@implementation GPUImageGammaFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setGammaBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
