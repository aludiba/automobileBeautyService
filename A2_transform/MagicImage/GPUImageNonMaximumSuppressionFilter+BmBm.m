#import "GPUImageNonMaximumSuppressionFilter+BmBm.h"
@implementation GPUImageNonMaximumSuppressionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
