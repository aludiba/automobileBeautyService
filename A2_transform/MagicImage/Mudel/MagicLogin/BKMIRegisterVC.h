#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface BKMIRegisterVC : UIViewController
@property (nonatomic, copy) void (^block)(NSString * BKusername,NSString * BKpassword);
@end
NS_ASSUME_NONNULL_END
