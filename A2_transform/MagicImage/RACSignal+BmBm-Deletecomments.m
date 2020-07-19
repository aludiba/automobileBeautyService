#import "RACSignal+BmBm-Deletecomments.h"
@implementation RACSignal (BmBm-Deletecomments)
+ (BOOL)createSignalBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)errorBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)neverBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)startEagerlyWithSchedulerBlockBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)startLazilyWithSchedulerBlockBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)descriptionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
