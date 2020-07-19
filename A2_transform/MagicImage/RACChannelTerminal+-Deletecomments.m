#import "RACChannelTerminal+-Deletecomments.h"
@implementation RACChannelTerminal (-Deletecomments)
+ (BOOL)initWithValuesOtherterminal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)subscribe-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)sendNext-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)sendError-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)sendCompleted-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)didSubscribeWithDisposable-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}

@end
