#import "NSArray+YYModel-Deletecomments.h"
@implementation NSArray (YYModel-Deletecomments)
+ (BOOL)yy_modelArrayWithClassJson-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)yy_modelArrayWithClassArray-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
