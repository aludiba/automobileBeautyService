#import "NSKeyedUnarchiver+YYAddBmBm-Deletecomments.h"
@implementation NSKeyedUnarchiver (YYAddBmBm-Deletecomments)
+ (BOOL)unarchiveObjectWithDataExceptionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)unarchiveObjectWithFileExceptionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}

@end
