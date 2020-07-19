#import "GPUImageRGBFilter+-Deletecomments.h"
@implementation GPUImageRGBFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)setRed-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)setGreen-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)setBlue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}

@end
