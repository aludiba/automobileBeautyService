#import "-deleteCommentsUICollectionReusableViewq.h"
@implementation -deleteCommentsUICollectionReusableViewq
+ (BOOL)vrac_prepareForReuseSignal:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}

@end
