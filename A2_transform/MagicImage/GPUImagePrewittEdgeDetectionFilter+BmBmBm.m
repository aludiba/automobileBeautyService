#import "GPUImagePrewittEdgeDetectionFilter+BmBmBm.h"
@implementation GPUImagePrewittEdgeDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
