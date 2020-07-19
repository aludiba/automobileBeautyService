#import "GPUImageVoronoiConsumerFilter+BmBm.h"
@implementation GPUImageVoronoiConsumerFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setSizeInPixelsBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
