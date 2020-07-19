#import "DGActivityIndicatorBallTrianglePathAnimation+Hb.h"
@implementation DGActivityIndicatorBallTrianglePathAnimation (Hb)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)createCircleWithSizeColorHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)changeAnimationValuesDeltaxDeltayHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)translateWithdeltaxDeltayHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
