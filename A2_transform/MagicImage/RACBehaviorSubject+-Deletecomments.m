#import "RACBehaviorSubject+-Deletecomments.h"
@implementation RACBehaviorSubject (-Deletecomments)
+ (BOOL)behaviorSubjectWithDefaultValue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)subscribe-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)sendNext-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}

@end
