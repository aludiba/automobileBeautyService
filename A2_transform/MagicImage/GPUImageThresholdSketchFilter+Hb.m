#import "GPUImageThresholdSketchFilter+Hb.h"
@implementation GPUImageThresholdSketchFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
