#import "TOCropScrollView+-Deletecomments.h"
@implementation TOCropScrollView (-Deletecomments)
+ (BOOL)touchesBeganWithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)touchesEndedWithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)touchesCancelledWithevent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}

@end
