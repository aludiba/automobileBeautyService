#import "GPUImageThresholdedNonMaximumSuppressionFilter+BmBmHb.h"
@implementation GPUImageThresholdedNonMaximumSuppressionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)initWithPackedColorspaceBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)setThresholdBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
