#import "BKMIFilterCell+BmBm-Deletecomments.h"
@implementation BKMIFilterCell (BmBm-Deletecomments)
+ (BOOL)initWithStyleReuseidentifierBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)setBKmodelBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
