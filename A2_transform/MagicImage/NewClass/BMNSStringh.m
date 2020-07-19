#import "BMNSStringH.h"
@implementation BMNSStringH
+ (BOOL)MMj_Underlinefromcamelbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)pMj_Camelfromunderlinebm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)HMj_Firstcharlowerbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)dMj_Firstcharupperbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)yMj_Ispureintbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)dMj_Urlbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
