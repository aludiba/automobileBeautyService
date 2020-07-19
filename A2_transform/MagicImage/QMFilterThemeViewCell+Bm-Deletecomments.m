#import "QMFilterThemeViewCell+Bm-Deletecomments.h"
@implementation QMFilterThemeViewCell (Bm-Deletecomments)
+ (BOOL)awakeFromNibBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)setSelectedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}

@end
