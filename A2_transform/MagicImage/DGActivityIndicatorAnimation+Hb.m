#import "DGActivityIndicatorAnimation+Hb.h"
@implementation DGActivityIndicatorAnimation (Hb)
+ (BOOL)createBasicAnimationWithKeyPathHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)createKeyframeAnimationWithKeyPathHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)createAnimationGroupHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
