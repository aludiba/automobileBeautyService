#import "GPUImageLightenBlendFilter+Bm.h"
@implementation GPUImageLightenBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
