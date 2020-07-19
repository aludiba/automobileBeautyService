#import "NSString+RACKeyPathUtilities-Deletecomments.h"
@implementation NSString (RACKeyPathUtilities-Deletecomments)
+ (BOOL)rac_keyPathComponents-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)rac_keyPathByDeletingLastKeyPathComponent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)rac_keyPathByDeletingFirstKeyPathComponent-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
