#import "LCDQMCameraFlashSuspensionView.h"
#import <ReactiveObjC.h>
#define kCameraRatioSuspensionViewHeight   50
#define kCameraRatioSuspensionViewMargin   11
NSString * const LCDFlashConfigJson = @"[{\"name\":\"闪光灯关闭\",\"icon\":\"qmkit_no_flash_btn\",\"type\":1},{\"name\":\"自动闪关灯\",\"icon\":\"qmkit_auto_flash_btn\",\"type\":2},{\"name\":\"闪光灯开启\",\"icon\":\"qmkit_always_flash_btn\",\"type\":3},{\"name\":\"手电筒\",\"icon\":\"qmkit_torch_flash_btn\",\"type\":4}]";
@implementation LCDQMCameraFlashSuspensionView
+ (instancetype)LCDflashSuspensionView
{
    CGSize LCDsize = [UIScreen mainScreen].bounds.size;
    CGRect LCDrect = CGRectMake(kCameraRatioSuspensionViewMargin, 0, LCDsize.width - 2*kCameraRatioSuspensionViewMargin, kCameraRatioSuspensionViewHeight);
    LCDQMCameraFlashSuspensionView *LCDview = [[LCDQMCameraFlashSuspensionView alloc] initWithFrame:LCDrect];
    LCDview.LCDsuspensionModels = [LCDQMSuspensionModel buildSuspensionModelsWithJson:LCDFlashConfigJson];
    LCDview.hidden = YES;
    @weakify(LCDview);
    [LCDview setLCDsuspensionItemClickBlock:^(LCDQMSuspensionModel *LCDitem) {
        @strongify(LCDview);
        [LCDview LCDhide];
        if (LCDview.LCDflashCallBack) {
            AVCaptureFlashMode LCDflash = AVCaptureFlashModeOff;
            AVCaptureTorchMode LCDtorch = AVCaptureTorchModeOff;
            switch (LCDitem.type) {
                case QMFlashTypeNone:
                    LCDflash = AVCaptureFlashModeOff;
                    break;
                case QMFlashTypeAuto:
                    LCDflash = AVCaptureFlashModeAuto;
                    break;
                case QMFlashTypeAlways:
                    LCDflash = AVCaptureFlashModeOn;
                    break;
                case QMFlashTypeTorch:
                    LCDtorch = AVCaptureTorchModeOn;
                    break;
                default:
                    break;
            }
            LCDview.LCDflashCallBack(LCDflash, LCDtorch, LCDitem.icon);
        }
    }];
    return LCDview;
}
- (UICollectionViewFlowLayout *)LCDcollectionViewForFlowLayout
{
    UICollectionViewFlowLayout *LCDlayout = [[UICollectionViewFlowLayout alloc] init];
    LCDlayout.itemSize = CGSizeMake(60,self.frame.size.height-20);
    LCDlayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    LCDlayout.minimumLineSpacing = 10;
    return LCDlayout;
}
@end
