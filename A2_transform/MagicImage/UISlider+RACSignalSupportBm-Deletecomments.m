#import "UISlider+RACSignalSupportBm-Deletecomments.h"
@implementation UISlider (RACSignalSupportBm-Deletecomments)
+ (BOOL)rac_newValueChannelWithNilValueBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
