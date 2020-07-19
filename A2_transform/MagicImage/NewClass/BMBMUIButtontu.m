#import "BMBMUIButtontu.h"
@implementation BMBMUIButtontu
+ (BOOL)hDrac_Command:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)PEsetrac_Command:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)TTrac_Hijackactionandtargetifneeded:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)MBrac_Commandperformaction:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
