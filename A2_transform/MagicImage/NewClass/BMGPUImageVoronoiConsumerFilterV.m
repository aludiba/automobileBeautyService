#import "BMGPUImageVoronoiConsumerFilterV.h"
@implementation BMGPUImageVoronoiConsumerFilterV
+ (BOOL)oInitbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)ySetsizeinpixelsbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
