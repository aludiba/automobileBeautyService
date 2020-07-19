#import "BMBMGPUImageVoronoiConsumerFilterjI.h"
@implementation BMBMGPUImageVoronoiConsumerFilterjI
+ (BOOL)LCinit:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)NAsetsizeinpixels:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
