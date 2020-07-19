#import "BMBMUIScrollViewPt+-Deletecomments.h"
@implementation BMBMUIScrollViewPt (-Deletecomments)
+ (BOOL)aTscrolltotop-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)ESscrolltobottom-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)nCscrolltoleft-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}
+ (BOOL)HJscrolltoright-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)uDscrolltotopanimated-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)vHscrolltobottomanimated-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)PFscrolltoleftanimated-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)GDscrolltorightanimated-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}

@end
