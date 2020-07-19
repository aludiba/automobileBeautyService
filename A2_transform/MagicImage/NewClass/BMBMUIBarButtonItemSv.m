#import "BMBMUIBarButtonItemSv.h"
@implementation BMBMUIBarButtonItemSv
+ (BOOL)QIrac_Command:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sVsetrac_Command:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)EBrac_Hijackactionandtargetifneeded:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)cRrac_Commandperformaction:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
