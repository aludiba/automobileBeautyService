#import "BMGPUImageVoronoiConsumerFilterf.h"
@implementation BMGPUImageVoronoiConsumerFilterf
+ (BOOL)Linit:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)pSetsizeinpixels:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
