#import "RACFiveTuple+Bm-Deletecomments.h"
@implementation RACFiveTuple (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)initWithBackingArrayBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)packFirstSecondThirdFourthBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)isEqualBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
