#import "NSObject+RACLiftingBm-Deletecomments.h"
@implementation NSObject (RACLiftingBm-Deletecomments)
+ (BOOL)rac_liftSelectorWithsignalofargumentsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsfromarrayBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}

@end
