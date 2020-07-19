#import "GPUImageHalftoneFilter+Bm.h"
@implementation GPUImageHalftoneFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
