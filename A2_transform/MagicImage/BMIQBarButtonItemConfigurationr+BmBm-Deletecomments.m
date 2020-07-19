#import "BMIQBarButtonItemConfigurationr+BmBm-Deletecomments.h"
@implementation BMIQBarButtonItemConfigurationr (BmBm-Deletecomments)
+ (BOOL)IInitwithbarbuttonsystemitemdActionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)TInitwithimageRActionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)MInitwithtitlesActionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
