#import "BMBMIQBarButtonItemConfigurationLV+-Deletecomments.h"
@implementation BMBMIQBarButtonItemConfigurationLV (-Deletecomments)
+ (BOOL)DBinitwithbarbuttonsystemitemactionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)BLinitwithimageactionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)BAinitwithtitleactionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
