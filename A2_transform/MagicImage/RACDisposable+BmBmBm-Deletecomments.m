#import "RACDisposable+BmBmBm-Deletecomments.h"
@implementation RACDisposable (BmBmBm-Deletecomments)
+ (BOOL)isDisposedBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)initBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)initWithBlockBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)disposableWithBlockBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)deallocBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)disposeBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)asScopedDisposableBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}

@end
