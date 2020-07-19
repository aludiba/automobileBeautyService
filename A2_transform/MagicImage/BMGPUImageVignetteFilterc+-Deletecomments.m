#import "BMGPUImageVignetteFilterc+-Deletecomments.h"
@implementation BMGPUImageVignetteFilterc (-Deletecomments)
+ (BOOL)dInitbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)PSetvignettecenterbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)KSetvignettecolorbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)tSetvignettestartbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)YSetvignetteendbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}

@end
