#import "BMUITextViewI+Bm-Deletecomments.h"
@implementation BMUITextViewI (Bm-Deletecomments)
+ (BOOL)grac_delegateProxyBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)wrac_textSignalBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}

@end
