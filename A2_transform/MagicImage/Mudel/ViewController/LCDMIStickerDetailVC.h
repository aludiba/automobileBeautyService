#import <UIKit/UIKit.h>
@class LCDMIHomeModel;
NS_ASSUME_NONNULL_BEGIN
@interface LCDMIStickerDetailVC : UIViewController
@property (nonatomic, strong) LCDMIHomeModel *LCDmodel;
@property (nonatomic, copy) NSString *LCDpId;
@property (nonatomic, assign) NSInteger LCDtype;
@end
NS_ASSUME_NONNULL_END
