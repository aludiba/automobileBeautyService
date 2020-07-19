#import "BMUIBarButtonItemL.h"
@implementation BMUIBarButtonItemL
+ (BOOL)BRac_Commandbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)BSetrac_Commandbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)uRac_Hijackactionandtargetifneededbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)vRac_Commandperformactionbm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
