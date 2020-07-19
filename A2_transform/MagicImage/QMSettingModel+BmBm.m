#import "QMSettingModel+BmBm.h"
@implementation QMSettingModel (BmBm)
+ (BOOL)buildSettingModelsBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
