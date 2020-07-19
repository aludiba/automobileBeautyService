#import "RACSignal+Debugging-Deletecomments.h"
@implementation RACSignal (Debugging-Deletecomments)
+ (BOOL)logAll-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)logNext-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)logError-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)logCompleted-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}

@end
