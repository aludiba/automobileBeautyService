#import "BMBMDGActivityIndicatorBallGridPulseAnimationwh.h"
@implementation BMBMDGActivityIndicatorBallGridPulseAnimationwh
+ (BOOL)LAsetupanimationinlayerswithsizektintcolor:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)BXcreatecirlewithmcolor:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
