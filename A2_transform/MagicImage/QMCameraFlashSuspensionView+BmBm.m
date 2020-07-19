#import "QMCameraFlashSuspensionView+BmBm.h"
@implementation QMCameraFlashSuspensionView (BmBm)
+ (BOOL)flashSuspensionViewBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)collectionViewForFlowLayoutBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
