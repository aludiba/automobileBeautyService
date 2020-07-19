#import "GPUImageSoftLightBlendFilter+Bm.h"
@implementation GPUImageSoftLightBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
