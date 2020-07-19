#import "GPUImageDirectionalSobelEdgeDetectionFilter+Bm.h"
@implementation GPUImageDirectionalSobelEdgeDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
