#import "BMGPUImageRGBFiltern+-Deletecomments.h"
@implementation BMGPUImageRGBFiltern (-Deletecomments)
+ (BOOL)iInitbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)vSetredbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)NSetgreenbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)iSetbluebm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}

@end
