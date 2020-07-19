#import "BMMKAnnotationViewA+Bm-Deletecomments.h"
@implementation BMMKAnnotationViewA (Bm-Deletecomments)
+ (BOOL)trac_prepareForReuseSignalBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
