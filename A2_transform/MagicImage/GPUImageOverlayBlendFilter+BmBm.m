#import "GPUImageOverlayBlendFilter+BmBm.h"
@implementation GPUImageOverlayBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
