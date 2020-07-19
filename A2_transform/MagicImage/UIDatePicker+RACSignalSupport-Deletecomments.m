#import "UIDatePicker+RACSignalSupport-Deletecomments.h"
@implementation UIDatePicker (RACSignalSupport-Deletecomments)
+ (BOOL)rac_newDateChannelWithNilValue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}

@end
