#import "DGActivityIndicatorBallTrianglePathAnimation+Bm.h"
@implementation DGActivityIndicatorBallTrianglePathAnimation (Bm)
+ (BOOL)setupAnimationInLayerWithsizeTintcolorBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)createCircleWithSizeColorBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)changeAnimationValuesDeltaxDeltayBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)translateWithdeltaxDeltayBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
