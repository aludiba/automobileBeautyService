#import "GPUImageHueBlendFilter+BmBm.h"
@implementation GPUImageHueBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
