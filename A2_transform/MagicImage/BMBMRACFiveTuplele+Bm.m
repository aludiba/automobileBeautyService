#import "BMBMRACFiveTuplele+Bm.h"
@implementation BMBMRACFiveTuplele (Bm)
+ (BOOL)NGinitbmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)ZLinitwithbackingarraybmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)FZpackfirstsecondthirdfourthbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)mIisequalbmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
