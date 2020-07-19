#import "BMNSKeyedUnarchiverj+-Deletecomments.h"
@implementation BMNSKeyedUnarchiverj (-Deletecomments)
+ (BOOL)gUnarchiveobjectwithdataexceptionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)AUnarchiveobjectwithfileexceptionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}

@end
