#import <UIKit/UIKit.h>
#import "BKQMSettingModel.h"
@interface BKQMSettingTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UISwitch *switcher;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
- (void)setSettingModelType:(QMSettingType)BKtype;
@end
