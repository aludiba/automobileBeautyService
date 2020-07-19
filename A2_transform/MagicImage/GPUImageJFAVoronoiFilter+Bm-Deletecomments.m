#import "GPUImageJFAVoronoiFilter+Bm-Deletecomments.h"
@implementation GPUImageJFAVoronoiFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)setSizeInPixelsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)nextPowerOfTwoBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}

@end
