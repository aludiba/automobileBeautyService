#import "BMGPUImageChromaKeyFilterc+Bm-Deletecomments.h"
@implementation BMGPUImageChromaKeyFilterc (Bm-Deletecomments)
+ (BOOL)jInitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)USetcolortoreplaceredgreenbluebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)ESetthresholdsensitivitybmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)GSetsmoothingbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
