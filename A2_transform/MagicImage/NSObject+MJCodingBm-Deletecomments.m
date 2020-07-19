#import "NSObject+MJCodingBm-Deletecomments.h"
@implementation NSObject (MJCodingBm-Deletecomments)
+ (BOOL)mj_encodeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)mj_decodeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
