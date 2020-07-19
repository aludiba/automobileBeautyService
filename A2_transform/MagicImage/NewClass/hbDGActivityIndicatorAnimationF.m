#import "hbDGActivityIndicatorAnimationF.h"
@implementation hbDGActivityIndicatorAnimationF
+ (BOOL)kCreatebasicanimationwithkeypath:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)oCreatekeyframeanimationwithkeypath:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)ecreateAnimationGroup:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)FSetupanimationinlayerMWithsizeVTintcolor:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
