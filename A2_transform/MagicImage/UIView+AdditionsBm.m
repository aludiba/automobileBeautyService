#import "UIView+AdditionsBm.h"
@implementation UIView (AdditionsBm)
+ (BOOL)setKeyboardDistanceFromTextFieldBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)keyboardDistanceFromTextFieldBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setIgnoreSwitchingByNextPreviousBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)ignoreSwitchingByNextPreviousBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setEnableModeBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)enableModeBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setShouldResignOnTouchOutsideModeBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)shouldResignOnTouchOutsideModeBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
