#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface BKMIHomeView : UIView
@property (nonatomic, copy) void (^block)(NSInteger tag);
@end
NS_ASSUME_NONNULL_END
