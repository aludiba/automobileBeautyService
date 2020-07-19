#import "-deleteCommentsNSArrayT.h"
@implementation -deleteCommentsNSArrayT
+ (BOOL)asortedArrayByTag:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)nsortedArrayByPosition:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
