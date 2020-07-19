#import "UISlider+RACSignalSupport-Deletecomments.h"
@implementation UISlider (RACSignalSupport-Deletecomments)
+ (BOOL)rac_newValueChannelWithNilValue-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}

@end
