#import "hbDGActivityIndicatorBallGridBeatAnimationA.h"
@implementation hbDGActivityIndicatorBallGridBeatAnimationA
+ (BOOL)mSetupanimationinlayerwithsizetintcolorhb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)qCreatecirlewithcolorhb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
