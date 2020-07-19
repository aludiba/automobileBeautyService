#import "GPUImageLaplacianFilter+Bm.h"
@implementation GPUImageLaplacianFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
