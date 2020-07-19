#import "-deleteCommentsUICollectionReusableViewb.h"
@implementation -deleteCommentsUICollectionReusableViewb
+ (BOOL)brac_prepareForReuseSignal:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}

@end
