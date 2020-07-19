#import "GPUImageHueBlendFilter+Bm.h"
@implementation GPUImageHueBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
