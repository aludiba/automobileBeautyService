#import "QMFrameThemeViewCell+Bm-Deletecomments.h"
@implementation QMFrameThemeViewCell (Bm-Deletecomments)
+ (BOOL)awakeFromNibBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}

@end
