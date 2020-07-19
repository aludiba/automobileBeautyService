#import "BMGPUImageDirectionalNonMaximumSuppressionFiltere+Bm-Deletecomments.h"
@implementation BMGPUImageDirectionalNonMaximumSuppressionFiltere (Bm-Deletecomments)
+ (BOOL)KinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)oSetupfilterforsizeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)wSettexelwidthBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)JSettexelheightBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}
+ (BOOL)TSetlowerthresholdBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)XSetupperthresholdBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}

@end
