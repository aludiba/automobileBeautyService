#import "GPUImageHalftoneFilter+BmBm.h"
@implementation GPUImageHalftoneFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
