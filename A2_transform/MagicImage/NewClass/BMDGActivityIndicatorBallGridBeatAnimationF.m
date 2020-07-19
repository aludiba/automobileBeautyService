#import "BMDGActivityIndicatorBallGridBeatAnimationF.h"
@implementation BMDGActivityIndicatorBallGridBeatAnimationF
+ (BOOL)CSetupanimationinlayerwithsizetintcolorbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)sCreatecirlewithcolorbm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
