#import "RACDisposable+-Deletecomments.h"
@implementation RACDisposable (-Deletecomments)
+ (BOOL)isDisposed-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}
+ (BOOL)initWithBlock-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)disposableWithBlock-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)dispose-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}
+ (BOOL)asScopedDisposable-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}

@end
