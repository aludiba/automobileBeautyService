#import "DGActivityIndicatorTriplePulseAnimation+Hb.h"
@implementation DGActivityIndicatorTriplePulseAnimation (Hb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
