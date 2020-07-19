#import "BMNSDictionaryZ+Bm-Deletecomments.h"
@implementation BMNSDictionaryZ (Bm-Deletecomments)
+ (BOOL)mrac_sequenceBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)mrac_keySequenceBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)Srac_valueSequenceBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
