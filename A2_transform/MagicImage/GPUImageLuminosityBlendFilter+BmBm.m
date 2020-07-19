#import "GPUImageLuminosityBlendFilter+BmBm.h"
@implementation GPUImageLuminosityBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
