#import "BKQMCameraFlashSuspensionView.h"
#import <ReactiveObjC.h>
#define kCameraRatioSuspensionViewHeight   50
#define kCameraRatioSuspensionViewMargin   11
NSString * const BKFlashConfigJson = @"[{\"name\":\"闪光灯关闭\",\"icon\":\"qmkit_no_flash_btn\",\"type\":1},{\"name\":\"自动闪关灯\",\"icon\":\"qmkit_auto_flash_btn\",\"type\":2},{\"name\":\"闪光灯开启\",\"icon\":\"qmkit_always_flash_btn\",\"type\":3},{\"name\":\"手电筒\",\"icon\":\"qmkit_torch_flash_btn\",\"type\":4}]";
@implementation BKQMCameraFlashSuspensionView
+ (instancetype)BKflashSuspensionView
{
    CGSize BKsize = [UIScreen mainScreen].bounds.size;
    CGRect BKrect = CGRectMake(kCameraRatioSuspensionViewMargin, 0, BKsize.width - 2*kCameraRatioSuspensionViewMargin, kCameraRatioSuspensionViewHeight);
    BKQMCameraFlashSuspensionView *BKview = [[BKQMCameraFlashSuspensionView alloc] initWithFrame:BKrect];
    BKview.BKsuspensionModels = [BKQMSuspensionModel buildSuspensionModelsWithJson:BKFlashConfigJson];
    BKview.hidden = YES;
    @weakify(BKview);
    [BKview setBKsuspensionItemClickBlock:^(BKQMSuspensionModel *BKitem) {
        @strongify(BKview);
        [BKview BKhide];
        if (BKview.BKflashCallBack) {
            AVCaptureFlashMode BKflash = AVCaptureFlashModeOff;
            AVCaptureTorchMode BKtorch = AVCaptureTorchModeOff;
            switch (BKitem.type) {
                case QMFlashTypeNone:
                    BKflash = AVCaptureFlashModeOff;
                    break;
                case QMFlashTypeAuto:
                    BKflash = AVCaptureFlashModeAuto;
                    break;
                case QMFlashTypeAlways:
                    BKflash = AVCaptureFlashModeOn;
                    break;
                case QMFlashTypeTorch:
                    BKtorch = AVCaptureTorchModeOn;
                    break;
                default:
                    break;
            }
            BKview.BKflashCallBack(BKflash, BKtorch, BKitem.icon);
        }
    }];
    return BKview;
}
- (UICollectionViewFlowLayout *)BKcollectionViewForFlowLayout
{
    UICollectionViewFlowLayout *BKlayout = [[UICollectionViewFlowLayout alloc] init];
    BKlayout.itemSize = CGSizeMake(60,self.frame.size.height-20);
    BKlayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    BKlayout.minimumLineSpacing = 10;
    return BKlayout;
}
@end
