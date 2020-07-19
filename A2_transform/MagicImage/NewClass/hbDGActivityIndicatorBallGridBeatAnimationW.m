#import "hbDGActivityIndicatorBallGridBeatAnimationW.h"
@implementation hbDGActivityIndicatorBallGridBeatAnimationW
+ (BOOL)tSetupanimationinlayerwithsizetintcolorhb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)NCreatecirlewithcolorhb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
