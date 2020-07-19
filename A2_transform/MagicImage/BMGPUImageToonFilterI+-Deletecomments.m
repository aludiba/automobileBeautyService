#import "BMGPUImageToonFilterI+-Deletecomments.h"
@implementation BMGPUImageToonFilterI (-Deletecomments)
+ (BOOL)hInitbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)YSetthresholdbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)fSetquantizationlevelsbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
