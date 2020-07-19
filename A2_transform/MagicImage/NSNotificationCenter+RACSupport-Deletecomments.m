#import "NSNotificationCenter+RACSupport-Deletecomments.h"
@implementation NSNotificationCenter (RACSupport-Deletecomments)
+ (BOOL)rac_addObserverForNameObject-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
