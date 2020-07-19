#import "BMIQBarButtonItemConfigurationL+-Deletecomments.h"
@implementation BMIQBarButtonItemConfigurationL (-Deletecomments)
+ (BOOL)bInitwithbarbuttonsystemitemactionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)lInitwithimageactionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)aInitwithtitleactionbm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}

@end
