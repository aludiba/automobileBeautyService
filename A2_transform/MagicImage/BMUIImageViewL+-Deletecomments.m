#import "BMUIImageViewL+-Deletecomments.h"
@implementation BMUIImageViewL (-Deletecomments)
+ (BOOL)LSd_Sethighlightedimagewithurlbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)eSd_Sethighlightedimagewithurloptionsbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)PSd_Sethighlightedimagewithurlcompletedbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)wSd_Sethighlightedimagewithurloptionscompletedbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)KSd_Sethighlightedimagewithurloptionsprogresscompletedbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
