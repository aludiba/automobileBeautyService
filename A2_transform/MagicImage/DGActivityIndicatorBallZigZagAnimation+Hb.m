#import "DGActivityIndicatorBallZigZagAnimation+Hb.h"
@implementation DGActivityIndicatorBallZigZagAnimation (Hb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
