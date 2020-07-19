#import "GPUImageVoronoiConsumerFilter+Hb.h"
@implementation GPUImageVoronoiConsumerFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)setSizeInPixelsHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
