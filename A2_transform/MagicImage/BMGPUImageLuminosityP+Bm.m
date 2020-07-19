#import "BMGPUImageLuminosityP+Bm.h"
@implementation BMGPUImageLuminosityP (Bm)
+ (BOOL)RinitBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)WinitializeSecondaryAttributesBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)bExtractluminosityatframetimeBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
