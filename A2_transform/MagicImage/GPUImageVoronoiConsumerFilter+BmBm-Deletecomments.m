#import "GPUImageVoronoiConsumerFilter+BmBm-Deletecomments.h"
@implementation GPUImageVoronoiConsumerFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)setSizeInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}

@end
