#import "BMSDWebImageTransitionr.h"
@implementation BMSDWebImageTransitionr
+ (BOOL)gFadetransitionbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)oFlipfromlefttransitionbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)HFlipfromrighttransitionbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)SFlipfromtoptransitionbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)nFlipfrombottomtransitionbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)NCurluptransitionbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)BCurldowntransitionbm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
