#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface BKMIMoreHeaderView : UIView
@property (nonatomic, copy) void (^block)(void);
- (void)BKupdateViews;
@end
NS_ASSUME_NONNULL_END
