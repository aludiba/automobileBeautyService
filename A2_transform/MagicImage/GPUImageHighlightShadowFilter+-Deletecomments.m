#import "GPUImageHighlightShadowFilter+-Deletecomments.h"
@implementation GPUImageHighlightShadowFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)setShadows-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)setHighlights-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}

@end
