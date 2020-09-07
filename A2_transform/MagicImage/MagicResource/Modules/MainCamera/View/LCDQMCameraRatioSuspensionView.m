#import "LCDQMCameraRatioSuspensionView.h"
#define kCameraRatioSuspensionViewHeight   80
#define kCameraRatioSuspensionViewMargin   11
NSString * const LCDRationConfigJson = @"[{\"name\":\"1:1\",\"icon\":\"qmkit_ratio_11_white\",\"value\":1,\"type\":2},{\"name\":\"3:4\",\"icon\":\"qmkit_ratio_34_white\",\"value\":1.33,\"type\":4},{\"name\":\"4:3\",\"icon\":\"qmkit_ratio_43_white\",\"value\":0.75,\"type\":4},{\"name\":\"9:16\",\"value\":1.78,\"icon\":\"qmkit_ratio_916_white\",\"type\":7},{\"name\":\"5:4\",\"icon\":\"qmkit_ratio_54_white\",\"value\":0.8,\"type\":5}]";
@implementation LCDQMCameraRatioSuspensionView
+ (instancetype)LCDratioSuspensionView
{
    CGSize LCDsize = [UIScreen mainScreen].bounds.size;
    CGRect LCDrect = CGRectMake(kCameraRatioSuspensionViewMargin, 0, LCDsize.width - 2*kCameraRatioSuspensionViewMargin, kCameraRatioSuspensionViewHeight);
    LCDQMCameraRatioSuspensionView *LCDview = [[LCDQMCameraRatioSuspensionView alloc] initWithFrame:LCDrect];
    LCDview.LCDsuspensionModels = [LCDQMSuspensionModel buildSuspensionModelsWithJson:LCDRationConfigJson];
    LCDview.hidden = YES;
    __weak typeof(LCDview) wview = LCDview;
    [LCDview setLCDsuspensionItemClickBlock:^(LCDQMSuspensionModel *LCDitem) {
        __weak typeof(LCDview) sview = wview;
        [sview LCDhide];
        if (sview.LCDratioCallBack) {
            sview.LCDratioCallBack(LCDitem);
        }
    }];
    return LCDview;
}
@end
