#import "-deleteCommentsUICollectionReusableViewX.h"
@implementation -deleteCommentsUICollectionReusableViewX
+ (BOOL)Brac_prepareForReuseSignal:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}

@end
