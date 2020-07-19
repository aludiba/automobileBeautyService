#import "BMUIButtons+Bm.h"
@implementation BMUIButtons (Bm)
+ (BOOL)QRac_CommandbmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)LSetrac_CommandbmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)uRac_HijackactionandtargetifneededbmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)uRac_CommandperformactionbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
