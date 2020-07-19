#import "GPUImagePrewittEdgeDetectionFilter+BmBm.h"
@implementation GPUImagePrewittEdgeDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
