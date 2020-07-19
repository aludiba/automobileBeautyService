#import "GPUImageVoronoiConsumerFilter+Bm.h"
@implementation GPUImageVoronoiConsumerFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setSizeInPixelsBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
