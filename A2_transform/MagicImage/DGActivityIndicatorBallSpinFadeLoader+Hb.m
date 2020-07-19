#import "DGActivityIndicatorBallSpinFadeLoader+Hb.h"
@implementation DGActivityIndicatorBallSpinFadeLoader (Hb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)circleLayerSizeOriginContainersizeColorHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)createLayerWithColorHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
