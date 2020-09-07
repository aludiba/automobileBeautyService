#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface LCDMIRegisterVC : UIViewController
@property (nonatomic, copy) void (^block)(NSString * LCDusername,NSString * LCDpassword);
@end
NS_ASSUME_NONNULL_END
