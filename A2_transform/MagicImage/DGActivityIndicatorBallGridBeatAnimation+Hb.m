#import "DGActivityIndicatorBallGridBeatAnimation+Hb.h"
@implementation DGActivityIndicatorBallGridBeatAnimation (Hb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)createCirleWithColorHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
