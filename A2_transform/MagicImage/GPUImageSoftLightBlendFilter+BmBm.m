#import "GPUImageSoftLightBlendFilter+BmBm.h"
@implementation GPUImageSoftLightBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
