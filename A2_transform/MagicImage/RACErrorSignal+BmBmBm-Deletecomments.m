#import "RACErrorSignal+BmBmBm-Deletecomments.h"
@implementation RACErrorSignal (BmBmBm-Deletecomments)
+ (BOOL)errorBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)subscribeBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}

@end
