#import "DGActivityIndicatorBallPulseAnimation+Hb.h"
@implementation DGActivityIndicatorBallPulseAnimation (Hb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
