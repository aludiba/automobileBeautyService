#import "BMBMRACFiveTupleFe.h"
@implementation BMBMRACFiveTupleFe
+ (BOOL)DSinitbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)SNinitwithbackingarraybm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)MIpackfirstsecondthirdfourthbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)WLisequalbm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
