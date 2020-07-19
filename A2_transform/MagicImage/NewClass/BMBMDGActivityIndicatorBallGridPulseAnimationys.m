#import "BMBMDGActivityIndicatorBallGridPulseAnimationys.h"
@implementation BMBMDGActivityIndicatorBallGridPulseAnimationys
+ (BOOL)QSsetupanimationinlayerwithsizetintcolorbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)XMcreatecirlewithcolorbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
