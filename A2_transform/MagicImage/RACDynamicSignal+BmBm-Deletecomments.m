#import "RACDynamicSignal+BmBm-Deletecomments.h"
@implementation RACDynamicSignal (BmBm-Deletecomments)
+ (BOOL)createSignalBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)subscribeBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}

@end
