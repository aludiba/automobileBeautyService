#import "NSObject+RACPropertySubscribing-Deletecomments.h"
@implementation NSObject (RACPropertySubscribing-Deletecomments)
+ (BOOL)rac_valuesForKeyPathObserver-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)rac_valuesAndChangesForKeyPathOptionsObserver-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}

@end
