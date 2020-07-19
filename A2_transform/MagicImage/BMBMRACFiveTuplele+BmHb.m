#import "BMBMRACFiveTuplele+BmHb.h"
@implementation BMBMRACFiveTuplele (BmHb)
+ (BOOL)NGinitbmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)ZLinitwithbackingarraybmBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)FZpackfirstsecondthirdfourthbmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)mIisequalbmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
