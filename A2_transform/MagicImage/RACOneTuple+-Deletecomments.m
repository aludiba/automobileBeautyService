#import "RACOneTuple+-Deletecomments.h"
@implementation RACOneTuple (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)initWithBackingArray-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)tupleByAddingObject-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)pack-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)isEqual-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
