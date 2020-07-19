#import "NSObject+RACLifting-Deletecomments.h"
@implementation NSObject (RACLifting-Deletecomments)
+ (BOOL)rac_liftSelectorWithsignalofarguments-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsfromarray-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)rac_liftSelectorWithsignals-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}

@end
