#import "DGActivityIndicatorView+Bm.h"
@implementation DGActivityIndicatorView (Bm)
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)initWithTypeBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)initWithTypeTintcolorBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)initWithTypeTintcolorSizeBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)commonInitBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setupAnimationBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)startAnimatingBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)stopAnimatingBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setTypeBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setSizeBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setTintColorBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)activityIndicatorAnimationForAnimationTypeBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)layoutSubviewsBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)intrinsicContentSizeBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
