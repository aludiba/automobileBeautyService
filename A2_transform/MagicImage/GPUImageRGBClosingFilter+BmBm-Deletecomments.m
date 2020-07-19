#import "GPUImageRGBClosingFilter+BmBm-Deletecomments.h"
@implementation GPUImageRGBClosingFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)initWithRadiusBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
