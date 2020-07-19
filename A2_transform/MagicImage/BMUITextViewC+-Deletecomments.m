#import "BMUITextViewC+-Deletecomments.h"
@implementation BMUITextViewC (-Deletecomments)
+ (BOOL)KRac_Delegateproxybm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)vRac_Textsignalbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
