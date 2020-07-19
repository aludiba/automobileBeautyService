#import "QMSettingModel+BmHb.h"
@implementation QMSettingModel (BmHb)
+ (BOOL)buildSettingModelsBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
