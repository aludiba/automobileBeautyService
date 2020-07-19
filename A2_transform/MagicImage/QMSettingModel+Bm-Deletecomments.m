#import "QMSettingModel+Bm-Deletecomments.h"
@implementation QMSettingModel (Bm-Deletecomments)
+ (BOOL)buildSettingModelsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}

@end
