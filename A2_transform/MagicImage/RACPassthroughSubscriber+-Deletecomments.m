#import "RACPassthroughSubscriber+-Deletecomments.h"
@implementation RACPassthroughSubscriber (-Deletecomments)
+ (BOOL)initWithSubscriberSignalDisposable-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)sendNext-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)sendError-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)sendCompleted-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)didSubscribeWithDisposable-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}

@end
