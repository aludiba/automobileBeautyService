#import "NSObject+YYAddForKVO-Deletecomments.h"
@implementation NSObject (YYAddForKVO-Deletecomments)
+ (BOOL)addObserverBlockForKeyPathBlock-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)removeObserverBlocksForKeyPath-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}
+ (BOOL)removeObserverBlocks-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)_yy_allNSObjectObserverBlocks-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
