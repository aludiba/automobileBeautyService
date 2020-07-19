#import "BMMKAnnotationViewA+-Deletecomments.h"
@implementation BMMKAnnotationViewA (-Deletecomments)
+ (BOOL)trac_prepareForReuseSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
