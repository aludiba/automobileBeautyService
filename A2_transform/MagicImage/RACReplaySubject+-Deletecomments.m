#import "RACReplaySubject+-Deletecomments.h"
@implementation RACReplaySubject (-Deletecomments)
+ (BOOL)replaySubjectWithCapacity-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)initWithCapacity-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)subscribe-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)sendNext-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)sendCompleted-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)sendError-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}

@end
