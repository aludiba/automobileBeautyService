#import "QMCameraRatioSuspensionView+Bm.h"
@implementation QMCameraRatioSuspensionView (Bm)
+ (BOOL)ratioSuspensionViewBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
