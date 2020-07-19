#import "UIImageView+GraudatedAnimationBm.h"
@implementation UIImageView (GraudatedAnimationBm)
+ (BOOL)dequeueBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)enqueueBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setImageWithGraudatedAnimationBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setImageWithGraudatedAnimationDurationBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setImageWithGraudatedMainAnimationGraduatedviewDurationBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setImageWithGraudatedMainAnimationDurationBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setImageWithGraudatedMainAnimationDurationCompletionBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)setGraudatedAnimationViewTransformBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setGraudatedAnimationViewFrameBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)clearCatchesBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
