#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface LCDMIHomeView : UIView
@property (nonatomic, copy) void (^block)(NSInteger tag);
@end
NS_ASSUME_NONNULL_END
