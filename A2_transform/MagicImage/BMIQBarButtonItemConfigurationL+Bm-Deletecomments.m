#import "BMIQBarButtonItemConfigurationL+Bm-Deletecomments.h"
@implementation BMIQBarButtonItemConfigurationL (Bm-Deletecomments)
+ (BOOL)bInitwithbarbuttonsystemitemactionbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)lInitwithimageactionbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)aInitwithtitleactionbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
