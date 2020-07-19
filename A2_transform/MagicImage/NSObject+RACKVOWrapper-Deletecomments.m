#import "NSObject+RACKVOWrapper-Deletecomments.h"
@implementation NSObject (RACKVOWrapper-Deletecomments)
+ (BOOL)rac_observeKeyPathOptionsObserverBlock-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}

@end
