#import "BMGPUImageBrightnessFilterw+BmBm-Deletecomments.h"
@implementation BMGPUImageBrightnessFilterw (BmBm-Deletecomments)
+ (BOOL)ginitBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)ySetbrightnessBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}

@end
