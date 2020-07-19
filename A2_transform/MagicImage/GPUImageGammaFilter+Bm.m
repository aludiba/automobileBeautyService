#import "GPUImageGammaFilter+Bm.h"
@implementation GPUImageGammaFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setGammaBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
