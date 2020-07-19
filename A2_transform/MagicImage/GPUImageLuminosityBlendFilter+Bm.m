#import "GPUImageLuminosityBlendFilter+Bm.h"
@implementation GPUImageLuminosityBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
