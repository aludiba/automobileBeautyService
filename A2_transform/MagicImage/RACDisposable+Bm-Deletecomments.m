#import "RACDisposable+Bm-Deletecomments.h"
@implementation RACDisposable (Bm-Deletecomments)
+ (BOOL)isDisposedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)initWithBlockBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)disposableWithBlockBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)deallocBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)disposeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)asScopedDisposableBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}

@end
