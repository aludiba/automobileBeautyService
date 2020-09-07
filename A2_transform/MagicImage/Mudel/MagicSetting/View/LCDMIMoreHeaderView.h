#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface LCDMIMoreHeaderView : UIView
@property (nonatomic, copy) void (^block)(void);
- (void)LCDupdateViews;
@end
NS_ASSUME_NONNULL_END
