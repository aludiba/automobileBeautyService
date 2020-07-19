#import "MBProgressHUD+JDragonBm.h"
@implementation MBProgressHUD (JDragonBm)
+ (BOOL)createMBProgressHUDviewWithMessageWithviewBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)createMBProgressHUDviewWithMessageIswindiwBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)showTipMessageInWindowBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)showTipMessageInViewBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)showTipMessageInWindowTimerBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)showTipMessageInViewTimerBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)showTipMessageIswindowTimerBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)showActivityMessageInWindowBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)showActivityMessageInViewWithmessageBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)showActivityMessageInViewBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)showActivityMessageInWindowTimerBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)showActivityMessageInViewTimerBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)showActivityMessageInviewTimerBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)showActivityMessageIswindowTimerBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)showSuccessMessageBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)showErrorMessageBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)showInfoMessageBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)showWarnMessageBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)showCustomIconInWindowMessageBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)showCustomIconInViewMessageBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)showCustomIconMessageIswindowBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)hideHUDBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)getCurrentWindowVCBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)getCurrentUIVCBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
