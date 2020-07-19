#import <UIKit/UIKit.h>
#import "RTVideoIconView.h"
#import "UIView+Geometry.h"
@interface RTVideoIndicatorView : UIView
@property (nonatomic, weak) IBOutlet UILabel            *timeLabel;
@property (nonatomic, weak) IBOutlet RTVideoIconView    *videoIcon;
@end
