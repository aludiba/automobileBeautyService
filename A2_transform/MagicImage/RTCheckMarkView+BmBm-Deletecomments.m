#import "RTCheckMarkView+BmBm-Deletecomments.h"
@implementation RTCheckMarkView (BmBm-Deletecomments)
+ (BOOL)awakeFromNibBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)drawRectBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}

@end
