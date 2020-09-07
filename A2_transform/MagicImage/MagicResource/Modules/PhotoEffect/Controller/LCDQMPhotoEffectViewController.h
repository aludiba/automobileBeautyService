#import <UIKit/UIKit.h>
@interface LCDQMPhotoEffectViewController : UIViewController
@property (nonatomic, strong) UIImage *LCDimage;
- (instancetype)initWithImage:(UIImage *)LCDimage;
@property (nonatomic, assign) NSInteger LCDtype;
@property (nonatomic, copy) NSString * LCDresourcePath;
@end
