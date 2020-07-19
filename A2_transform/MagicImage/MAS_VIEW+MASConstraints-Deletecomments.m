#import "MAS_VIEW+MASConstraints-Deletecomments.h"
@implementation MAS_VIEW (MASConstraints-Deletecomments)
+ (BOOL)mas_installedConstraints-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
