#import "BMBMBMUIButtontcg.h"
@implementation BMBMBMUIButtontcg
+ (BOOL)pEdrac_Command:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)oBesetrac_Command:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)VCtrac_Hijackactionandtargetifneeded:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)rAbrac_Commandperformaction:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
