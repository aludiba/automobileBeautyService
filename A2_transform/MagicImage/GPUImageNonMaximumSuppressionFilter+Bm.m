#import "GPUImageNonMaximumSuppressionFilter+Bm.h"
@implementation GPUImageNonMaximumSuppressionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
