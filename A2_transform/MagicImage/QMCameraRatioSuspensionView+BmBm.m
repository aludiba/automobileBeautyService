#import "QMCameraRatioSuspensionView+BmBm.h"
@implementation QMCameraRatioSuspensionView (BmBm)
+ (BOOL)ratioSuspensionViewBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
