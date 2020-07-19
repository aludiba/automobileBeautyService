#import <UIKit/UIKit.h>
@interface BKQMPhotoEffectViewController : UIViewController
@property (nonatomic, strong) UIImage *BKimage;
- (instancetype)initWithImage:(UIImage *)BKimage;
@property (nonatomic, assign) NSInteger BKtype;
@property (nonatomic, copy) NSString * BKresourcePath;
@end
