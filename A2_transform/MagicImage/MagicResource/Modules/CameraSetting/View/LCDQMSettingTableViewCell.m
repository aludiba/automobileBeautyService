#import "LCDQMSettingTableViewCell.h"
@implementation LCDQMSettingTableViewCell
- (void)awakeFromNib
{
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.switcher.transform = CGAffineTransformMakeScale(0.9, 0.9);
}
- (void)setSettingModelType:(QMSettingType)LCDtype
{
    if (LCDtype == QMSettingTypeLink) {
        self.switcher.hidden = YES;
    }else if (LCDtype == QMSettingTypeSwitch) {
        self.switcher.hidden = NO;
    }
}
@end
