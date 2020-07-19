#import "RACSignalSequence+-Deletecomments.h"
@implementation RACSignalSequence (-Deletecomments)
+ (BOOL)sequenceWithSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)head-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)tail-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)array-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)description-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
