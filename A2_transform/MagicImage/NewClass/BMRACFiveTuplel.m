#import "BMRACFiveTuplel.h"
@implementation BMRACFiveTuplel
+ (BOOL)GInitbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)LInitwithbackingarraybm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)ZPackfirstsecondthirdfourthbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)iIsequalbm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
