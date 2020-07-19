#import "BKQMSuspensionView.h"
#import "Constants.h"
@interface BKQMCameraRatioSuspensionView : BKQMSuspensionView
@property (nonatomic, copy) void (^BKratioCallBack)(BKQMSuspensionModel *item);
+ (instancetype)BKratioSuspensionView;
@end
