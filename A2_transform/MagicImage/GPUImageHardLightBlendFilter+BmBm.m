#import "GPUImageHardLightBlendFilter+BmBm.h"
@implementation GPUImageHardLightBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
