#import "GPUImageDirectionalSobelEdgeDetectionFilter+BmBm.h"
@implementation GPUImageDirectionalSobelEdgeDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
