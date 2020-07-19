#import "UISwitch+RACSignalSupport-Deletecomments.h"
@implementation UISwitch (RACSignalSupport-Deletecomments)
+ (BOOL)rac_newOnChannel-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}

@end
