#import "QMFilterThemeViewCell+BmBm-Deletecomments.h"
@implementation QMFilterThemeViewCell (BmBm-Deletecomments)
+ (BOOL)awakeFromNibBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)setSelectedBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}

@end
