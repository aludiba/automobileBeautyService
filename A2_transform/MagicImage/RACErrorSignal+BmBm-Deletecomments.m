#import "RACErrorSignal+BmBm-Deletecomments.h"
@implementation RACErrorSignal (BmBm-Deletecomments)
+ (BOOL)errorBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)subscribeBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}

@end
