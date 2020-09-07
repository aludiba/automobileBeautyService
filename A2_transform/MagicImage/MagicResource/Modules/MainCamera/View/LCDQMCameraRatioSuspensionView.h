#import "LCDQMSuspensionView.h"
#import "Constants.h"
@interface LCDQMCameraRatioSuspensionView : LCDQMSuspensionView
@property (nonatomic, copy) void (^LCDratioCallBack)(LCDQMSuspensionModel *item);
+ (instancetype)LCDratioSuspensionView;
@end
