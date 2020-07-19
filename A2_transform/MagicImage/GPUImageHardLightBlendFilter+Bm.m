#import "GPUImageHardLightBlendFilter+Bm.h"
@implementation GPUImageHardLightBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
