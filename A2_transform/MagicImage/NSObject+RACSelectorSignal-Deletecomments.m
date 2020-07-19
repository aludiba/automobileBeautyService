#import "NSObject+RACSelectorSignal-Deletecomments.h"
@implementation NSObject (RACSelectorSignal-Deletecomments)
+ (BOOL)rac_signalForSelector-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)rac_signalForSelectorFromprotocol-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}

@end
