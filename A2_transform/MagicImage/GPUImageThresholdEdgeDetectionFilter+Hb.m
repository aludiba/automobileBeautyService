#import "GPUImageThresholdEdgeDetectionFilter+Hb.h"
@implementation GPUImageThresholdEdgeDetectionFilter (Hb)
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)setThresholdHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
