#import "UIView+AdditionsBmBm.h"
@implementation UIView (AdditionsBmBm)
+ (BOOL)setKeyboardDistanceFromTextFieldBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)keyboardDistanceFromTextFieldBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setIgnoreSwitchingByNextPreviousBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)ignoreSwitchingByNextPreviousBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setEnableModeBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)enableModeBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setShouldResignOnTouchOutsideModeBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)shouldResignOnTouchOutsideModeBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
