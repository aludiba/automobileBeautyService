#import "BMGPUImagePrewittEdgeDetectionFilterp+Bm.h"
@implementation BMGPUImagePrewittEdgeDetectionFilterp (Bm)
+ (BOOL)RinitBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
