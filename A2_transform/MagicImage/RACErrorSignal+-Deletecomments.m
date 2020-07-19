#import "RACErrorSignal+-Deletecomments.h"
@implementation RACErrorSignal (-Deletecomments)
+ (BOOL)error-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)subscribe-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}

@end
