#import "BMBMGPUImageVoronoiConsumerFilterjI+Bm-Deletecomments.h"
@implementation BMBMGPUImageVoronoiConsumerFilterjI (Bm-Deletecomments)
+ (BOOL)LCinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)NAsetsizeinpixelsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}

@end
