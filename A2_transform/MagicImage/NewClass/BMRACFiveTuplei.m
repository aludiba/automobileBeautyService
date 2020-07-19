#import "BMRACFiveTuplei.h"
@implementation BMRACFiveTuplei
+ (BOOL)tInitbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)iInitwithbackingarraybmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sPackfirstsecondthirdfourthbmbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)zIsequalbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
