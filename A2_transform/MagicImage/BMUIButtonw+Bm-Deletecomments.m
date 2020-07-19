#import "BMUIButtonw+Bm-Deletecomments.h"
@implementation BMUIButtonw (Bm-Deletecomments)
+ (BOOL)bloadBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)Osd_button_layoutSubviewsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
