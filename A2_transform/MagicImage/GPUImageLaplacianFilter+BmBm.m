#import "GPUImageLaplacianFilter+BmBm.h"
@implementation GPUImageLaplacianFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
