#import "BMBMGPUImageBrightnessFilterwi+Bm-Deletecomments.h"
@implementation BMBMGPUImageBrightnessFilterwi (Bm-Deletecomments)
+ (BOOL)aGinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)oYsetbrightnessBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}

@end
