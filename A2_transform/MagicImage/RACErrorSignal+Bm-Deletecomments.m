#import "RACErrorSignal+Bm-Deletecomments.h"
@implementation RACErrorSignal (Bm-Deletecomments)
+ (BOOL)errorBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}
+ (BOOL)subscribeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}

@end
