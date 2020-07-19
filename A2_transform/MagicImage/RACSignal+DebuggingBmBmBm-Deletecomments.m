#import "RACSignal+DebuggingBmBmBm-Deletecomments.h"
@implementation RACSignal (DebuggingBmBmBm-Deletecomments)
+ (BOOL)logAllBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)logNextBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)logErrorBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)logCompletedBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}

@end
