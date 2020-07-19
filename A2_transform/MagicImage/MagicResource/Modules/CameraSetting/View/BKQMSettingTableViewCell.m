#import "BKQMSettingTableViewCell.h"
@implementation BKQMSettingTableViewCell
- (void)awakeFromNib
{
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.switcher.transform = CGAffineTransformMakeScale(0.9, 0.9);
}
- (void)setSettingModelType:(QMSettingType)BKtype
{
    if (BKtype == QMSettingTypeLink) {
        self.switcher.hidden = YES;
    }else if (BKtype == QMSettingTypeSwitch) {
        self.switcher.hidden = NO;
    }
}
@end
