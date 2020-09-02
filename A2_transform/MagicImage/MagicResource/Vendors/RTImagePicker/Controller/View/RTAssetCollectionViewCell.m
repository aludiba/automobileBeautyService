#import "RTAssetCollectionViewCell.h"
@interface RTAssetCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIView *overlayView;
@end
@implementation RTAssetCollectionViewCell
- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    self.overlayView.backgroundColor = [UIColor darkGrayColor];
    self.overlayView.alpha = 0.6f;
    self.overlayView.hidden = !(selected && self.showsOverlayViewWhenSelected);
}
@end
