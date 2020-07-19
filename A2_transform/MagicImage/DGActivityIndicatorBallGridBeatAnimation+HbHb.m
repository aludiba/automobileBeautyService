#import "DGActivityIndicatorBallGridBeatAnimation+HbHb.h"
@implementation DGActivityIndicatorBallGridBeatAnimation (HbHb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHbHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)createCirleWithColorHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
