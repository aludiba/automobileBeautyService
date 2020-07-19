#import "GPUImagePosterizeFilter+BmBm-Deletecomments.h"
@implementation GPUImagePosterizeFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)setColorLevelsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}

@end
