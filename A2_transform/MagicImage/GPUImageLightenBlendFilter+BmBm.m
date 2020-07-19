#import "GPUImageLightenBlendFilter+BmBm.h"
@implementation GPUImageLightenBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
