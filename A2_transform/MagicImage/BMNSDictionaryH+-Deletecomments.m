#import "BMNSDictionaryH+-Deletecomments.h"
@implementation BMNSDictionaryH (-Deletecomments)
+ (BOOL)pRac_Sequencebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)pRac_Keysequencebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)hRac_Valuesequencebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
