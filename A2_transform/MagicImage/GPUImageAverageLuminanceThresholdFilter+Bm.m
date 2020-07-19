#import "GPUImageAverageLuminanceThresholdFilter+Bm.h"
@implementation GPUImageAverageLuminanceThresholdFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
