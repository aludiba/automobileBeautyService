#import "BMDGActivityIndicatorAnimationD.h"
@implementation BMDGActivityIndicatorAnimationD
+ (BOOL)hCreatebasicanimationwithkeypath:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)BCreatekeyframeanimationwithkeypath:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)fcreateAnimationGroup:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)uSetupanimationinlayerkWithsizeYTintcolor:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
