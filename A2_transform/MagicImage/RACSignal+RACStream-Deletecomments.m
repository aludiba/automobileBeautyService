#import "RACSignal+RACStream-Deletecomments.h"
@implementation RACSignal (RACStream-Deletecomments)
+ (BOOL)empty-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)return-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)bind-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)concat-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)zipWith-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}

@end
