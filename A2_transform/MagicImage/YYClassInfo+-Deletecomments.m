#import "YYClassInfo+-Deletecomments.h"
@implementation YYClassInfo (-Deletecomments)
+ (BOOL)initWithClass-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)_update-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)setNeedUpdate-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)needUpdate-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)classInfoWithClass-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)classInfoWithClassName-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}

@end
