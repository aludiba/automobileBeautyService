#import "BMGPUImageVoronoiConsumerFilterj.h"
@implementation BMGPUImageVoronoiConsumerFilterj
+ (BOOL)Cinit:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)aSetsizeinpixels:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
