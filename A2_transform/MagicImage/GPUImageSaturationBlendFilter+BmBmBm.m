#import "GPUImageSaturationBlendFilter+BmBmBm.h"
@implementation GPUImageSaturationBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
