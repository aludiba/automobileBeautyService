#import "NSKeyedUnarchiver+YYAdd-Deletecomments.h"
@implementation NSKeyedUnarchiver (YYAdd-Deletecomments)
+ (BOOL)unarchiveObjectWithDataException-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)unarchiveObjectWithFileException-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}

@end
