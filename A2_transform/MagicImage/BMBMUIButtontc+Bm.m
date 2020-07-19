#import "BMBMUIButtontc+Bm.h"
@implementation BMBMUIButtontc (Bm)
+ (BOOL)eDrac_CommandBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)BEsetrac_CommandBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)CTrac_HijackactionandtargetifneededBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)aBrac_CommandperformactionBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
