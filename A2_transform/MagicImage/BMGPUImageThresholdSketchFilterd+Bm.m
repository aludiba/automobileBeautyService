#import "BMGPUImageThresholdSketchFilterd+Bm.h"
@implementation BMGPUImageThresholdSketchFilterd (Bm)
+ (BOOL)winitBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
