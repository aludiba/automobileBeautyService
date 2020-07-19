#import "BMBMUIScrollViewko+-Deletecomments.h"
@implementation BMBMUIScrollViewko (-Deletecomments)
+ (BOOL)YOscrolltotopbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)MUscrolltobottombm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)VBscrolltoleftbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)oDscrolltorightbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)DBscrolltotopanimatedbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)oUscrolltobottomanimatedbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)JPscrolltoleftanimatedbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)QFscrolltorightanimatedbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
