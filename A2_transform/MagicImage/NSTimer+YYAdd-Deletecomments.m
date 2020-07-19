#import "NSTimer+YYAdd-Deletecomments.h"
@implementation NSTimer (YYAdd-Deletecomments)
+ (BOOL)_yy_ExecBlock-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)scheduledTimerWithTimeIntervalBlockRepeats-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)timerWithTimeIntervalBlockRepeats-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}

@end
