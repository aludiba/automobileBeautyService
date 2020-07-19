#import "BMNSKeyedUnarchiverx+-Deletecomments.h"
@implementation BMNSKeyedUnarchiverx (-Deletecomments)
+ (BOOL)EUnarchiveobjectwithdataexceptionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)DUnarchiveobjectwithfileexceptionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
