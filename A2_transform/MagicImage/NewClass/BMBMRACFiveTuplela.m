#import "BMBMRACFiveTuplela.h"
@implementation BMBMRACFiveTuplela
+ (BOOL)NGinitbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)OLinitwithbackingarraybm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)OZpackfirstsecondthirdfourthbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)HIisequalbm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
