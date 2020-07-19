#import "GPUImageThresholdSketchFilter+BmBm.h"
@implementation GPUImageThresholdSketchFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
