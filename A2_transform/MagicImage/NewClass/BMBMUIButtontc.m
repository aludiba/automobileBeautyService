#import "BMBMUIButtontc.h"
@implementation BMBMUIButtontc
+ (BOOL)eDrac_Command:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)BEsetrac_Command:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)CTrac_Hijackactionandtargetifneeded:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)aBrac_Commandperformaction:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
