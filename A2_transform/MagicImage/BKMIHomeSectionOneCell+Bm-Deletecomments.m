#import "BKMIHomeSectionOneCell+Bm-Deletecomments.h"
@implementation BKMIHomeSectionOneCell (Bm-Deletecomments)
+ (BOOL)initWithStyleReuseidentifierBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
