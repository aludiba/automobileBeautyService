#import <UIKit/UIKit.h>
@interface LCDQMPhotoClipViewController : UIViewController
@property (nonatomic, strong) UIImage *LCDimage;
@property (nonatomic, copy) void(^LCDcompletionBlock)(UIImage *LCDimage, CGSize LCDsize, CGFloat LCDrotate);
@end
