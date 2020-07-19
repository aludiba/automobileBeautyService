#import "DGActivityIndicatorBallGridPulseAnimation+Hb.h"
@implementation DGActivityIndicatorBallGridPulseAnimation (Hb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)createCirleWithColorHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
