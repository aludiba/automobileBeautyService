#import "QMSettingTableViewCell+Bm.h"
@implementation QMSettingTableViewCell (Bm)
+ (BOOL)awakeFromNibBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setSettingModelTypeBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
