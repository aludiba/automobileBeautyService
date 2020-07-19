#import "GPUImageNonMaximumSuppressionFilter+Hb.h"
@implementation GPUImageNonMaximumSuppressionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
