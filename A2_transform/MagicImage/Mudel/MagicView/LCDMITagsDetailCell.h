#import <UIKit/UIKit.h>
@class LCDMITagsModel;
NS_ASSUME_NONNULL_BEGIN
@interface LCDMITagsDetailCell : UITableViewCell
@property (nonatomic, strong) LCDMITagsModel * LCDmodel;
@property (nonatomic, copy) void (^block)(NSInteger tag);
@end
NS_ASSUME_NONNULL_END
