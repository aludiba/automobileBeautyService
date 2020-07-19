#import "BMGPUImageChromaKeyFilters+Bm.h"
@implementation BMGPUImageChromaKeyFilters (Bm)
+ (BOOL)TinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)PSetcolortoreplaceredBGreenlBlueBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)SSetthresholdsensitivityBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)cSetsmoothingBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
