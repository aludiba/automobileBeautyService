#import "BMUITextViewI+-Deletecomments.h"
@implementation BMUITextViewI (-Deletecomments)
+ (BOOL)grac_delegateProxy-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)wrac_textSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
