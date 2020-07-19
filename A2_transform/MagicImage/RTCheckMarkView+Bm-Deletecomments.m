#import "RTCheckMarkView+Bm-Deletecomments.h"
@implementation RTCheckMarkView (Bm-Deletecomments)
+ (BOOL)awakeFromNibBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)drawRectBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}

@end
