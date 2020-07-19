#import "BMBMDGActivityIndicatorAnimationDx.h"
@implementation BMBMDGActivityIndicatorAnimationDx
+ (BOOL)EHcreatebasicanimationwithkeypath:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)DBcreatekeyframeanimationwithkeypath:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)mFcreateanimationgroup:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)NUsetupanimationinlayerkwithsizeytintcolor:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
