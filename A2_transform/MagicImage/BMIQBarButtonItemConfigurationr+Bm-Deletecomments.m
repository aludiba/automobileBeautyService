#import "BMIQBarButtonItemConfigurationr+Bm-Deletecomments.h"
@implementation BMIQBarButtonItemConfigurationr (Bm-Deletecomments)
+ (BOOL)IInitwithbarbuttonsystemitemdActionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)TInitwithimageRActionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)MInitwithtitlesActionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}

@end
