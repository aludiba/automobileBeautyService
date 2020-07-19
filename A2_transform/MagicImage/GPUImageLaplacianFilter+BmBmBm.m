#import "GPUImageLaplacianFilter+BmBmBm.h"
@implementation GPUImageLaplacianFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
