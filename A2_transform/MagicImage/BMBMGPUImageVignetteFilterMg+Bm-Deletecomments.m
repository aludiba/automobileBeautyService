#import "BMBMGPUImageVignetteFilterMg+Bm-Deletecomments.h"
@implementation BMBMGPUImageVignetteFilterMg (Bm-Deletecomments)
+ (BOOL)UNinitbmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)tCsetvignettecenterbmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)CFsetvignettecolorbmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)SJsetvignettestartbmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)TWsetvignetteendbmbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
