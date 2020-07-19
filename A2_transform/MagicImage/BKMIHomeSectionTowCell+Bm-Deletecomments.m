#import "BKMIHomeSectionTowCell+Bm-Deletecomments.h"
@implementation BKMIHomeSectionTowCell (Bm-Deletecomments)
+ (BOOL)initWithStyleReuseidentifierBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)setBKmodelBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}

@end
