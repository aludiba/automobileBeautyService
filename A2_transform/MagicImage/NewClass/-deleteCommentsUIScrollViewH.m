#import "-deleteCommentsUIScrollViewH.h"
@implementation -deleteCommentsUIScrollViewH
+ (BOOL)DScrolltotopbm:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)oScrolltobottombm:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)FScrolltoleftbm:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)QScrolltorightbm:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)EScrolltotopanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)EScrolltobottomanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)vScrolltoleftanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)VScrolltorightanimatedbm:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}

@end
