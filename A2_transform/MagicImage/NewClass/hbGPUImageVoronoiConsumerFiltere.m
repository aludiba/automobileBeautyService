#import "hbGPUImageVoronoiConsumerFiltere.h"
@implementation hbGPUImageVoronoiConsumerFiltere
+ (BOOL)vinit:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)SSetsizeinpixels:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
