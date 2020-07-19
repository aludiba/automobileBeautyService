#import "BMNSStringJ+Bm-Deletecomments.h"
@implementation BMNSStringJ (Bm-Deletecomments)
+ (BOOL)Xmj_underlineFromCamelBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)qmj_camelFromUnderlineBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)amj_firstCharLowerBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)tmj_firstCharUpperBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)Xmj_isPureIntBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)emj_urlBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}

@end
