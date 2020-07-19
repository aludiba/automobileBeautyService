#import "GPUImageThresholdedNonMaximumSuppressionFilter+Hb.h"
@implementation GPUImageThresholdedNonMaximumSuppressionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)initWithPackedColorspaceHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setThresholdHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
