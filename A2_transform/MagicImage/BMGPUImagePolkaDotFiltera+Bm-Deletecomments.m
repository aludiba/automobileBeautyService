#import "BMGPUImagePolkaDotFiltera+Bm-Deletecomments.h"
@implementation BMGPUImagePolkaDotFiltera (Bm-Deletecomments)
+ (BOOL)xinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)ISetdotscalingBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}

@end
