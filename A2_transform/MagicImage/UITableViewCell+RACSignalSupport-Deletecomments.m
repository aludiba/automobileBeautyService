#import "UITableViewCell+RACSignalSupport-Deletecomments.h"
@implementation UITableViewCell (RACSignalSupport-Deletecomments)
+ (BOOL)rac_prepareForReuseSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
