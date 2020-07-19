#import <UIKit/UIKit.h>
@interface BKQMPhotoClipViewController : UIViewController
@property (nonatomic, strong) UIImage *BKimage;
@property (nonatomic, copy) void(^BKcompletionBlock)(UIImage *BKimage, CGSize BKsize, CGFloat BKrotate);
@end
