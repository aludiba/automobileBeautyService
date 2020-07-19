#import "GPUImagePrewittEdgeDetectionFilter+Bm.h"
@implementation GPUImagePrewittEdgeDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
