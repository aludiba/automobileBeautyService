#import "GPUImageAverageLuminanceThresholdFilter+BmBm.h"
@implementation GPUImageAverageLuminanceThresholdFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
