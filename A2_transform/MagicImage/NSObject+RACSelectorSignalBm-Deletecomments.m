#import "NSObject+RACSelectorSignalBm-Deletecomments.h"
@implementation NSObject (RACSelectorSignalBm-Deletecomments)
+ (BOOL)rac_signalForSelectorBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)rac_signalForSelectorFromprotocolBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}

@end
