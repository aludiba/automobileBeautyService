#import "QMCameraFlashSuspensionView+Bm.h"
@implementation QMCameraFlashSuspensionView (Bm)
+ (BOOL)flashSuspensionViewBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)collectionViewForFlowLayoutBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
