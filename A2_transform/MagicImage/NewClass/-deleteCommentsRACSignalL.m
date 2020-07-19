#import "-deleteCommentsRACSignalL.h"
@implementation -deleteCommentsRACSignalL
+ (BOOL)MlogAll:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)MlogNext:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)klogError:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)tlogCompleted:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}

@end
