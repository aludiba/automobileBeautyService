#import "-deleteCommentsUIImageViewa.h"
@implementation -deleteCommentsUIImageViewa
+ (BOOL)hSd_Sethighlightedimagewithurlbm:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)pSd_Sethighlightedimagewithurloptionsbm:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)TSd_Sethighlightedimagewithurlcompletedbm:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)NSd_Sethighlightedimagewithurloptionscompletedbm:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)aSd_Sethighlightedimagewithurloptionsprogresscompletedbm:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}

@end
