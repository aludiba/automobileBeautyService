#import "QMSettingTableViewCell+BmBm.h"
@implementation QMSettingTableViewCell (BmBm)
+ (BOOL)awakeFromNibBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setSettingModelTypeBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
