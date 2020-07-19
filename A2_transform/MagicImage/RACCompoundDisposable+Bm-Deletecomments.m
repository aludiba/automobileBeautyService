#import "RACCompoundDisposable+Bm-Deletecomments.h"
@implementation RACCompoundDisposable (Bm-Deletecomments)
+ (BOOL)isDisposedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)compoundDisposableBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)compoundDisposableWithDisposablesBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)initWithDisposablesBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)initWithBlockBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)deallocBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)addDisposableBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)removeDisposableBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)disposeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
