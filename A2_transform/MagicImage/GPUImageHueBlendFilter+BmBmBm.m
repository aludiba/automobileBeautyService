#import "GPUImageHueBlendFilter+BmBmBm.h"
@implementation GPUImageHueBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
