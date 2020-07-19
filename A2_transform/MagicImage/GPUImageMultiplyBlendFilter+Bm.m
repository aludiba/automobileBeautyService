#import "GPUImageMultiplyBlendFilter+Bm.h"
@implementation GPUImageMultiplyBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
