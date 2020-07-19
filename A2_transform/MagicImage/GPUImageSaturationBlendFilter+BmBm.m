#import "GPUImageSaturationBlendFilter+BmBm.h"
@implementation GPUImageSaturationBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
