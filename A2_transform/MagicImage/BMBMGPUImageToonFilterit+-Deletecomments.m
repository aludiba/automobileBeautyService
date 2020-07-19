#import "BMBMGPUImageToonFilterit+-Deletecomments.h"
@implementation BMBMGPUImageToonFilterit (-Deletecomments)
+ (BOOL)EJinitbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)dIsetthresholdbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)mKsetquantizationlevelsbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
