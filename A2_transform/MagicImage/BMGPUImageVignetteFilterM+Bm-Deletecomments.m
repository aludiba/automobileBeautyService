#import "BMGPUImageVignetteFilterM+Bm-Deletecomments.h"
@implementation BMGPUImageVignetteFilterM (Bm-Deletecomments)
+ (BOOL)nInitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)cSetvignettecenterbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)FSetvignettecolorbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)jSetvignettestartbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)wSetvignetteendbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}

@end
