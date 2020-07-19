#import "GPUImageHighlightShadowFilter+BmBm-Deletecomments.h"
@implementation GPUImageHighlightShadowFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)setShadowsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)setHighlightsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
