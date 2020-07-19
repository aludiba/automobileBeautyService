#import "UISegmentedControl+RACSignalSupportBmBmBm-Deletecomments.h"
@implementation UISegmentedControl (RACSignalSupportBmBmBm-Deletecomments)
+ (BOOL)rac_newSelectedSegmentIndexChannelWithNilValueBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}

@end
