#import <UIKit/UIKit.h>
#import "LCDQMSettingModel.h"
@interface LCDQMSettingTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UISwitch *switcher;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
- (void)setSettingModelType:(QMSettingType)LCDtype;
@end
