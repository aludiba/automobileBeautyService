#import "DGActivityIndicatorBallClipRotateMultipleAnimation+Hb.h"
@implementation DGActivityIndicatorBallClipRotateMultipleAnimation (Hb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)createAnimationInDurationWithtimingfunctionReverseHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
