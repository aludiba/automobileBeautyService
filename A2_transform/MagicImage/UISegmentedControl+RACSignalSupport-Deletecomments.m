#import "UISegmentedControl+RACSignalSupport-Deletecomments.h"
@implementation UISegmentedControl (RACSignalSupport-Deletecomments)
+ (BOOL)rac_newSelectedSegmentIndexChannelWithNilValue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}

@end
