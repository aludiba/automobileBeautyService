#import "RACSignalSequence+Bm-Deletecomments.h"
@implementation RACSignalSequence (Bm-Deletecomments)
+ (BOOL)sequenceWithSignalBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)headBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)tailBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)arrayBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)descriptionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}

@end
