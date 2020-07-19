#import "BMUIBarButtonItemL+Bm.h"
@implementation BMUIBarButtonItemL (Bm)
+ (BOOL)BRac_CommandbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)BSetrac_CommandbmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)uRac_HijackactionandtargetifneededbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)vRac_CommandperformactionbmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
