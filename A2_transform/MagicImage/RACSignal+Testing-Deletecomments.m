#import "RACSignal+Testing-Deletecomments.h"
@implementation RACSignal (Testing-Deletecomments)
+ (BOOL)asynchronousFirstOrDefaultSuccessError-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)asynchronousFirstOrDefaultSuccessErrorTimeout-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)asynchronouslyWaitUntilCompletedTimeout-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)asynchronouslyWaitUntilCompleted-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}

@end
