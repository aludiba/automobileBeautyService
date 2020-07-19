#import "-deleteCommentsNSObjectX.h"
@implementation -deleteCommentsNSObjectX
+ (BOOL)irac_willDeallocSignal:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)orac_deallocDisposable:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}

@end
