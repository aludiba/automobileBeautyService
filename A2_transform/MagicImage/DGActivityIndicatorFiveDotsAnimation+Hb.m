#import "DGActivityIndicatorFiveDotsAnimation+Hb.h"
@implementation DGActivityIndicatorFiveDotsAnimation (Hb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
