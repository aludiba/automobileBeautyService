#import "GPUImageDirectionalSobelEdgeDetectionFilter+BmBmBm.h"
@implementation GPUImageDirectionalSobelEdgeDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
