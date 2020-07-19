#import "GPUImageThresholdSketchFilter+Bm.h"
@implementation GPUImageThresholdSketchFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
