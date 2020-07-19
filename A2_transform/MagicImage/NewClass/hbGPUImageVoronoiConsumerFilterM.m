#import "hbGPUImageVoronoiConsumerFilterM.h"
@implementation hbGPUImageVoronoiConsumerFilterM
+ (BOOL)kinit:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)bSetsizeinpixels:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
