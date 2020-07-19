#import "BMBMGPUImageDirectionalNonMaximumSuppressionFilteree+Bm-Deletecomments.h"
@implementation BMBMGPUImageDirectionalNonMaximumSuppressionFilteree (Bm-Deletecomments)
+ (BOOL)HKinitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)oOsetupfilterforsizebmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)lWsettexelwidthbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)SJsettexelheightbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)GTsetlowerthresholdbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}
+ (BOOL)nXsetupperthresholdbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
