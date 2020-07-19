#import "UIStepper+RACSignalSupport-Deletecomments.h"
@implementation UIStepper (RACSignalSupport-Deletecomments)
+ (BOOL)rac_newValueChannelWithNilValue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
