#import "BMGPUImageDirectionalSobelEdgeDetectionFilterU.h"
@implementation BMGPUImageDirectionalSobelEdgeDetectionFilterU
+ (BOOL)Yinit:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
