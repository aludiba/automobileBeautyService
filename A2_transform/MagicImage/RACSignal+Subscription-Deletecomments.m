#import "RACSignal+Subscription-Deletecomments.h"
@implementation RACSignal (Subscription-Deletecomments)
+ (BOOL)subscribe-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)subscribeNext-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)subscribeNextCompleted-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)subscribeNextErrorCompleted-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)subscribeError-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)subscribeCompleted-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)subscribeNextError-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)subscribeErrorCompleted-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
