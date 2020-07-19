#import "GPUImageSaturationBlendFilter+Bm.h"
@implementation GPUImageSaturationBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
