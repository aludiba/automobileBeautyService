#import "GPUImagePosterizeFilter+Bm-Deletecomments.h"
@implementation GPUImagePosterizeFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)setColorLevelsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}

@end
