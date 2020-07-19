#import "QMSettingModel+BmBm-Deletecomments.h"
@implementation QMSettingModel (BmBm-Deletecomments)
+ (BOOL)buildSettingModelsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}

@end
