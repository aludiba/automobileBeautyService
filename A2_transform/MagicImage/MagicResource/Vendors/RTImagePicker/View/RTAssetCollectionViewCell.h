#import <UIKit/UIKit.h>
#import "RTVideoIndicatorView.h"
@interface RTAssetCollectionViewCell : UICollectionViewCell
@property (nonatomic, weak) IBOutlet UIImageView            *imageView;
@property (nonatomic, weak) IBOutlet RTVideoIndicatorView   *videoIndicatorView;
@property (nonatomic, assign) BOOL                          showsOverlayViewWhenSelected;
@end
