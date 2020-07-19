#import "BMBKMITagsCellC+-Deletecomments.h"
@implementation BMBKMITagsCellC (-Deletecomments)
+ (BOOL)PInitwithstylereuseidentifierbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)sSetbkmodelbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
