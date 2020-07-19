#import "QMSettingModel+Bm.h"
@implementation QMSettingModel (Bm)
+ (BOOL)buildSettingModelsBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
