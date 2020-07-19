#import "-deleteCommentsUITableViewCellI.h"
@implementation -deleteCommentsUITableViewCellI
+ (BOOL)frac_prepareForReuseSignal:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}

@end
