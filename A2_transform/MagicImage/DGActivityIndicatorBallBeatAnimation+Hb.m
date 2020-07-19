#import "DGActivityIndicatorBallBeatAnimation+Hb.h"
@implementation DGActivityIndicatorBallBeatAnimation (Hb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
