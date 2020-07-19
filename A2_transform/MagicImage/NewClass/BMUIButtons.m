#import "BMUIButtons.h"
@implementation BMUIButtons
+ (BOOL)QRac_Commandbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)LSetrac_Commandbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)uRac_Hijackactionandtargetifneededbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)uRac_Commandperformactionbm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
