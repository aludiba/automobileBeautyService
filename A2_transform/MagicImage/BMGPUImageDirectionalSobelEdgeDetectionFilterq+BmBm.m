#import "BMGPUImageDirectionalSobelEdgeDetectionFilterq+BmBm.h"
@implementation BMGPUImageDirectionalSobelEdgeDetectionFilterq (BmBm)
+ (BOOL)ainitBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
