#import "GPUImageRGBOpeningFilter+-Deletecomments.h"
@implementation GPUImageRGBOpeningFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)initWithRadius-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
