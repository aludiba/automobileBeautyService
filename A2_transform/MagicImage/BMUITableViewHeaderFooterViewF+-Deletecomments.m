#import "BMUITableViewHeaderFooterViewF+-Deletecomments.h"
@implementation BMUITableViewHeaderFooterViewF (-Deletecomments)
+ (BOOL)irac_prepareForReuseSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
