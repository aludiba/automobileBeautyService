#import "GPUImageHalftoneFilter+BmBmBm.h"
@implementation GPUImageHalftoneFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
