#import "NSObject+RACLiftingBmBmBm-Deletecomments.h"
@implementation NSObject (RACLiftingBmBmBm-Deletecomments)
+ (BOOL)rac_liftSelectorWithsignalofargumentsBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsfromarrayBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
