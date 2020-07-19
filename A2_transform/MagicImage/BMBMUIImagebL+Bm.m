#import "BMBMUIImagebL+Bm.h"
@implementation BMBMUIImagebL (Bm)
+ (BOOL)oSkeyboardleftimageBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)iAkeyboardrightimageBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)AVkeyboardupimageBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)TVkeyboarddownimageBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)CCkeyboardpreviousimageBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sJkeyboardnextimageBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
