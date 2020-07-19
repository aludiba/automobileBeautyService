#import "NSObject+RACPropertySubscribingBm-Deletecomments.h"
@implementation NSObject (RACPropertySubscribingBm-Deletecomments)
+ (BOOL)rac_valuesForKeyPathObserverBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)rac_valuesAndChangesForKeyPathOptionsObserverBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}

@end
