#import "BMUICollectionReusableViewV+-Deletecomments.h"
@implementation BMUICollectionReusableViewV (-Deletecomments)
+ (BOOL)frac_prepareForReuseSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}

@end
