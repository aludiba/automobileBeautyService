#import "UIStepper+RACSignalSupportBmBm-Deletecomments.h"
@implementation UIStepper (RACSignalSupportBmBm-Deletecomments)
+ (BOOL)rac_newValueChannelWithNilValueBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}

@end
