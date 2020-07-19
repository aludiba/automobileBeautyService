#import "GPUImageThresholdSketchFilter+BmBmBm.h"
@implementation GPUImageThresholdSketchFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
