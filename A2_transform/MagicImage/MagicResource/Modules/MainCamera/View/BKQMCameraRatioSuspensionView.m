#import "BKQMCameraRatioSuspensionView.h"
#define kCameraRatioSuspensionViewHeight   80
#define kCameraRatioSuspensionViewMargin   11
NSString * const BKRationConfigJson = @"[{\"name\":\"1:1\",\"icon\":\"qmkit_ratio_11_white\",\"value\":1,\"type\":2},{\"name\":\"3:4\",\"icon\":\"qmkit_ratio_34_white\",\"value\":1.33,\"type\":4},{\"name\":\"4:3\",\"icon\":\"qmkit_ratio_43_white\",\"value\":0.75,\"type\":4},{\"name\":\"9:16\",\"value\":1.78,\"icon\":\"qmkit_ratio_916_white\",\"type\":7},{\"name\":\"5:4\",\"icon\":\"qmkit_ratio_54_white\",\"value\":0.8,\"type\":5}]";
@implementation BKQMCameraRatioSuspensionView
+ (instancetype)BKratioSuspensionView
{
    CGSize BKsize = [UIScreen mainScreen].bounds.size;
    CGRect BKrect = CGRectMake(kCameraRatioSuspensionViewMargin, 0, BKsize.width - 2*kCameraRatioSuspensionViewMargin, kCameraRatioSuspensionViewHeight);
    BKQMCameraRatioSuspensionView *BKview = [[BKQMCameraRatioSuspensionView alloc] initWithFrame:BKrect];
    BKview.BKsuspensionModels = [BKQMSuspensionModel buildSuspensionModelsWithJson:BKRationConfigJson];
    BKview.hidden = YES;
    __weak typeof(BKview) wview = BKview;
    [BKview setBKsuspensionItemClickBlock:^(BKQMSuspensionModel *BKitem) {
        __weak typeof(BKview) sview = wview;
        [sview BKhide];
        if (sview.BKratioCallBack) {
            sview.BKratioCallBack(BKitem);
        }
    }];
    return BKview;
}
@end
